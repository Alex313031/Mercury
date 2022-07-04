## Debugging <img src="https://github.com/Alex313031/Mercury/blob/main/logos/bug.svg" width="28">

### Useful cmdline flags
-new-instance // Open new instance, not a new window in running instance, which allows multiple copies of application to be open at a time. \
-P "profile_name" // Bypass profile manager and launch application with the profile named profile_name. Useful for dealing with multiple profiles. \
-profile "profile_path" // Start with the profile with the given path. \
--kiosk URL // Open URL full screen without user interface. \
-devtools // Start with native developer tools opened. \
-purgecaches // Gecko (layout engine) has a JavaScript cache, which is not reset on startup, this clears it. \
-version // Print Mercury version to stdout. \
-tray // Start Mercury minimized. \
-safe-mode // Start Mercury in safe mode. \

 - `about:config` is the equivalent of the chrome://flags page. Use this for experimenting, debugging, and tweaking.

### Resources
__*&#42;For more information about debugging,* See > [Logging](https://firefox-source-docs.mozilla.org/mach/logging.html), [Command Line Options](https://wiki.mozilla.org/Firefox/CommandLineOptions), [Browser Console](https://firefox-source-docs.mozilla.org/devtools-user/browser_console/index.html), [Browser Toolbox](https://firefox-source-docs.mozilla.org/devtools-user/browser_toolbox/index.html), [DevTools](https://firefox-source-docs.mozilla.org/devtools-user/index.html), [Web Debugging](https://firefox-source-docs.mozilla.org/devtools-user/about_colon_debugging/index.html), and [Debugging the Browser](https://firefox-source-docs.mozilla.org/contributing/debugging/debugging_firefox_with_gdb.html).
