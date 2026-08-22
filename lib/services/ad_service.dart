import 'package:flutter/foundation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../config/constants.dart';
import 'dart:async';

class AdService {
  AdService._();
  static final AdService instance = AdService._();

  bool _initialized = false;
  bool _initFailed = false;
  StreamSubscription? _connectivitySubscription;
  Timer? _periodicTimer;

  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;

  // Preloaded banner ads, ready to be shown instantly when the app is used.
  // Ads are fetched in the background whenever there is connectivity so they are
  // already "caught" by the time a banner slot is rendered.
  final List<BannerAd> _bannerCache = [];
  static const int _bannerCacheTarget = 4;

  bool get _interstitialReady => _interstitialAd != null;
  bool get _rewardedReady => _rewardedAd != null;
  int get cachedBannerCount => _bannerCache.length;

  Future<void> init() async {
    if (_initialized) return;
    _initialized = true;
    debugPrint('[AdService] Initializing Google Mobile Ads');
    await MobileAds.instance.initialize();
    debugPrint('[AdService] Google Mobile Ads initialized');
    _loadAll();
    _listenConnectivity();
    _startPeriodicPreload();
  }

  void _loadAll() {
    loadInterstitial();
    loadRewarded();
    _topUpBannerCache();
  }

  void _listenConnectivity() {
    _connectivitySubscription?.cancel();
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((result) {
      if (result != ConnectivityResult.none) {
        debugPrint('[AdService] Network available - loading ads');
        _loadAll();
      }
    });
  }

  void _startPeriodicPreload() {
    _periodicTimer?.cancel();
    _periodicTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (!_initFailed) {
        _loadAll();
      }
    });
  }

  void onAppResume() {
    if (!_initFailed) {
      debugPrint('[AdService] App resumed - refreshing ad cache');
      _loadAll();
    }
  }

  void dispose() {
    _connectivitySubscription?.cancel();
    _periodicTimer?.cancel();
    _interstitialAd?.dispose();
    _rewardedAd?.dispose();
    for (final ad in _bannerCache) {
      ad.dispose();
    }
    _bannerCache.clear();
  }

  void loadInterstitial() {
    if (_initFailed) return;
    debugPrint('[AdService] Loading interstitial');
    InterstitialAd.load(
      adUnitId: AppConstants.admobInterstitialUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          debugPrint('[AdService] Interstitial loaded');
          _interstitialAd = ad;
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              debugPrint('[AdService] Interstitial dismissed');
              ad.dispose();
              _interstitialAd = null;
              loadInterstitial();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              debugPrint('[AdService] Interstitial show failed: $error');
              ad.dispose();
              _interstitialAd = null;
              loadInterstitial();
            },
          );
        },
        onAdFailedToLoad: (error) {
          debugPrint('[AdService] Interstitial load failed: $error');
          _interstitialAd = null;
          Timer(const Duration(seconds: 10), () => loadInterstitial());
        },
      ),
    );
  }

  void loadRewarded() {
    if (_initFailed) return;
    debugPrint('[AdService] Loading rewarded');
    RewardedAd.load(
      adUnitId: AppConstants.admobRewardedUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          debugPrint('[AdService] Rewarded loaded');
          _rewardedAd = ad;
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              debugPrint('[AdService] Rewarded dismissed');
              ad.dispose();
              _rewardedAd = null;
              loadRewarded();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              debugPrint('[AdService] Rewarded show failed: $error');
              ad.dispose();
              _rewardedAd = null;
              loadRewarded();
            },
          );
        },
        onAdFailedToLoad: (error) {
          debugPrint('[AdService] Rewarded load failed: $error');
          _rewardedAd = null;
          Timer(const Duration(seconds: 10), () => loadRewarded());
        },
      ),
    );
  }

  void showInterstitial({VoidCallback? onComplete}) {
    debugPrint('[AdService] showInterstitial called (ready: $_interstitialReady)');

    bool callbackFired = false;
    void fireCallback() {
      if (!callbackFired) {
        callbackFired = true;
        onComplete?.call();
      }
    }

    if (!_interstitialReady || _interstitialAd == null) {
      debugPrint('[AdService] Interstitial not ready - skipping');
      Future.microtask(() => fireCallback());
      return;
    }

    final ad = _interstitialAd!;
    _interstitialAd = null;

    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (a) {
        debugPrint('[AdService] Interstitial dismissed');
        a.dispose();
        loadInterstitial();
        fireCallback();
      },
      onAdFailedToShowFullScreenContent: (a, error) {
        debugPrint('[AdService] Interstitial show failed: $error');
        a.dispose();
        loadInterstitial();
        fireCallback();
      },
    );

    ad.show();
  }

  void showRewarded({VoidCallback? onRewarded, VoidCallback? onFailed}) {
    debugPrint('[AdService] showRewarded called (ready: $_rewardedReady)');

    bool callbackFired = false;
    void fireReward() {
      if (!callbackFired) {
        callbackFired = true;
        onRewarded?.call();
      }
    }

    void fireFail() {
      if (!callbackFired) {
        callbackFired = true;
        onFailed?.call();
      }
    }

    if (!_rewardedReady || _rewardedAd == null) {
      debugPrint('[AdService] Rewarded not ready - skipping');
      Future.microtask(() => fireFail());
      return;
    }

    final ad = _rewardedAd!;
    _rewardedAd = null;

    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (a) {
        debugPrint('[AdService] Rewarded dismissed');
        a.dispose();
        loadRewarded();
        fireFail();
      },
      onAdFailedToShowFullScreenContent: (a, error) {
        debugPrint('[AdService] Rewarded show failed: $error');
        a.dispose();
        loadRewarded();
        fireFail();
      },
    );

    ad.show(
      onUserEarnedReward: (ad, reward) {
        debugPrint('[AdService] Rewarded completed - granting reward');
        fireReward();
      },
    );
  }

  void preloadInterstitial() => loadInterstitial();
  void preloadRewarded() => loadRewarded();
  void preloadBanner() => _topUpBannerCache();

  /// Fills the banner cache up to the target size by loading fresh banner ads.
  /// Safe to call any number of times — it only loads when there is spare
  /// capacity, so ads are continuously "caught" in the background while data is
  /// on and stay ready for instant display.
  void _topUpBannerCache() {
    if (_initFailed) return;
    while (_bannerCache.length < _bannerCacheTarget) {
      _loadOneBanner();
    }
  }

  void _loadOneBanner() {
    BannerAd(
      adUnitId: AppConstants.admobBannerUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('[AdService] Banner preloaded (cache ${_bannerCache.length + 1}/$_bannerCacheTarget)');
          _bannerCache.add(ad as BannerAd);
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('[AdService] Banner preload failed: $error');
          ad.dispose();
        },
      ),
    )..load();
  }

  /// Hands a preloaded banner to a widget for display (or null if the cache is
  /// empty). The widget that calls this owns the returned ad and must dispose
  /// it, but the cache keeps top-ups flowing so a replacement is already being
  /// fetched in the background.
  BannerAd? takeBanner() {
    if (_bannerCache.isEmpty) return null;
    final ad = _bannerCache.removeLast();
    _topUpBannerCache();
    return ad;
  }
}
