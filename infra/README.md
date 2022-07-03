## Mercury Infrastructure (Infra) <img src="https://github.com/Alex313031/Mercury/blob/main/logos/build_light.svg#gh-dark-mode-only"> <img src="https://github.com/Alex313031/Mercury/blob/main/logos/build_dark.svg#gh-light-mode-only">

&nbsp;&nbsp;This dir contains [*.gn files*](https://gn.googlesource.com/gn/)<img src="https://github.com/Alex313031/Thorium/blob/main/logos/NEW/gn-logo.png" width="32">, scripts, and other artifacts like vdpau-va-driver and flash player and the BUILDER file which contains notes (generally only usable by me, but feel free to ask what the info inside is for). \
&nbsp;&nbsp;The [args.list](https://github.com/Alex313031/Thorium/blob/main/infra/args.list) file shows all possible build arguments, and the [gn_args.list](https://github.com/Alex313031/Thorium/blob/main/infra/gn_args.list) shows all possible build args after the Thorium args have been added, and the [win_args.list](https://github.com/Alex313031/Thorium/blob/main/infra/win_args.list) shows all possible build arguments for Windows builds. \
&nbsp;&nbsp;The &#42;.gn files contain what you should use in the args.gn for platforms other than the normal Linux release (which is [here](https://github.com/Alex313031/Thorium/blob/main/args.gn) in the root of this repo.)

 - The [69_release_args.gn](https://github.com/Alex313031/Thorium/blob/main/infra/69_release_args.gn) is for Chromium 60-70 versions.
 

<img src="https://github.com/Alex313031/Thorium/blob/main/logos/NEW/thorium_infra_256.png" width="200">
