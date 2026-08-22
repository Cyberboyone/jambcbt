# QUICK START — get the build running

You (the repo owner) must do these 2 steps on GitHub — the coding agent's token
cannot create workflow files or secrets (permission denied).

The two workflow files' full YAML is in docs/GITHUB_ACTIONS.md.
The base64 + password are in keystore_secrets.txt (gitignored, never committed).

====================================================================
STEP 1 — Add the TWO workflow files to the repo (on GitHub website)
====================================================================

1. Open https://github.com/Cyberboyone/jambcbt  (make sure you're on the `main` branch)
2. Click "Add file" → "Create new file"
3. In the filename box type:  .github/workflows/build-apk.yml
4. Paste the content of the FIRST yaml block from docs/GITHUB_ACTIONS.md
5. Click "Commit new file"
6. Repeat steps 2–5 for:  .github/workflows/build-aab.yml  (SECOND yaml block)

   → That's TWO files total. Both are needed (APK + Play Store AAB).

====================================================================
STEP 2 — Add the TWO secrets
====================================================================

1. Go to repo → Settings → "Secrets and variables" → "Actions"
2. Click "New repository secret"
   - Name:  ANDROID_KEYSTORE_BASE64
   - Secret:  the ENTIRE long base64 string from keystore_secrets.txt line 1
              (everything after "ANDROID_KEYSTORE_BASE64=")
   - Click "Add secret"
3. Click "New repository secret" again
   - Name:  ANDROID_KEY_PASSWORD
   - Secret:  92d9727c4aae1a8a33cf684b8467162d
   - Click "Add secret"

====================================================================
STEP 3 — Run the builds
====================================================================

- APK:  merge PR #1 → "Build Android APK" runs automatically.
        (Or: Actions → "Build Android APK" → "Run workflow")
- AAB (Play Store):  Actions → "Build Android App Bundle (Play Store)" → "Run workflow"

Download your files from the workflow run's "Artifacts" section.
====================================================================
