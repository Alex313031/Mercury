#!/bin/bash

# Copyright (c) 2022 Alex313031 and Midzer.

YEL='\033[1;33m' # Yellow
RED='\033[1;31m' # Red
GRE='\033[1;32m' # Green
c0=$'\033[0m' # Reset Text
bold=$'\033[1m' # Bold Text
underline=$'\033[4m' # Underline Text

# Error handling
yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "${RED}Failed $*"; }

# --help
displayHelp () {
	printf "\n" &&
	printf "${bold}${GRE}Script to Rebase/Sync Mozilla repo on Linux.${c0}\n" &&
	printf "\n"
}

case $1 in
	--help) displayHelp; exit 0;;
esac

printf "\n" &&
printf "${bold}${GRE}Script to Rebase/Sync Mozilla repo on Linux.${c0}\n" &&
printf "\n" &&
printf "${YEL}Rebasing/Syncing with mozilla-unified Mercurial repository...\n" &&
tput sgr0 &&

cd $HOME/mozilla-unified &&

hg pull &&

hg update --clean -C mozilla-unified &&

hg purge &&

printf "\n" &&

printf "${GRE}Done! ${YEL}You can now run ./setup.sh\n"
tput sgr0

exit 0
