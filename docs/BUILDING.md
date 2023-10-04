## Building <img src="https://github.com/Alex313031/Mercury/blob/main/logos/build_light.svg#gh-dark-mode-only"> <img src="https://github.com/Alex313031/Mercury/blob/main/logos/build_dark.svg#gh-light-mode-only">
_**The scripts assume the Mercury source is at $HOME/Mercury/ and Mozilla source is at $HOME/mozilla-unified/. You may have to 'sudo chmod +x' the scripts to make them executable.**_ 

- In general we follow build instructions at https://firefox-source-docs.mozilla.org/setup/linux_build.html
- `bootstrap.sh` can be used to download the Mozilla tree for the first time.
- `trunk.sh` can be used to revert and sync the Mozilla tree to trunk.
- `setup.sh` copies relevant Mercury source files over the Mozilla tree. *NOTE: Use the --help flag to see options for Linux and Windows*
- To build, run `./build.sh` (--help for help). *The -j# variable can be changed to limit or increase the number of jobs (generally should be the number of CPU cores on your machine)*


*Happy Mercury Building!*

<img src="https://github.com/Alex313031/Mercury/blob/main/logos/geckoview.svg" width="144">
