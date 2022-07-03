#!/bin/bash

# Copyright (c) 2022 Alex313031.

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
	printf "${bold}${GRE}Script to build Mercury on Linux.${c0}\n" &&
	printf "${underline}${YEL}Usage: ${c0}build.sh\n" &&
	printf "${underline} ${c0}You can run export MOZ_MAKE_FLAGS="-j8" where -j is the number of CPU cores.\n" &&
	printf "\n"
}

case $1 in
	--help) displayHelp; exit 0;;
esac

printf "\n" &&
printf "${YEL}Building Mercury for Linux...\n" &&
printf "${GRE}\n" &&

# Build Thorium
export NINJA_SUMMARIZE_BUILD=1 &&

cd $HOME/mozilla-unified &&

./mach build -v &&

printf "${GRE}${bold}Build Completed. ${YEL}${bold}You can now run ./mach package to build a tarball package.\n" &&
tput sgr0
