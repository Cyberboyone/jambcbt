import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

/// Live, on-screen startup tracer.
///
/// Written by main() at every startup step and rendered as a small overlay
/// (see StartupOverlay, wired in app.dart). If the app ever freezes during
/// startup on a real device, the last visible line shows exactly which step
/// was running — no adb needed.
class StartupLog {
  StartupLog._();

  /// Every completed step, newest last: "1.4s — seed eng: 200".
  static final ValueNotifier<List<String>> lines = ValueNotifier([]);

  /// Whether the overlay is shown. Stays true if startup never finishes.
  static final ValueNotifier<bool> visible = ValueNotifier(false);

  static final Stopwatch _watch = Stopwatch()..start();

  static void step(String message) {
    final ts = (_watch.elapsedMilliseconds / 1000).toStringAsFixed(1);
    lines.value = [...lines.value, '$ts s — $message'];
    visible.value = true;
    debugPrint('[Startup] $ts s — $message');
  }

  static void fail(String message, Object error) {
    step('$message FAILED: $error');
  }

  static void hide() {
    visible.value = false;
  }
}

/// Full-screen, non-interactive overlay showing the startup trace.
/// Place inside a Stack with Positioned.fill — it never blocks touches.
class StartupOverlay extends StatelessWidget {
  const StartupOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: StartupLog.visible,
      builder: (context, isVisible, _) {
        if (!isVisible) return const SizedBox.shrink();
        return Container(
          color: Colors.black87,
          padding: const EdgeInsets.fromLTRB(16, 48, 16, 24),
          child: ValueListenableBuilder<List<String>>(
            valueListenable: StartupLog.lines,
            builder: (context, allLines, _) {
              final shown = allLines.length > 14
                  ? allLines.sublist(allLines.length - 14)
                  : allLines;
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'STARTUP TRACE (diagnostics build)',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  ...shown.map(
                    (l) => Text(
                      l,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'monospace',
                        height: 1.35,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
