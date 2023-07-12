#!/bin/bash

# Copyright (c) 2023 Alex313031.

YEL='\033[1;33m' # Yellow
CYA='\033[1;96m' # Cyan
RED='\033[1;31m' # Red
GRE='\033[1;32m' # Green
c0='\033[0m' # Reset Text
bold='\033[1m' # Bold Text
underline='\033[4m' # Underline Text

# Error handling
yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "${RED}Failed $*"; }

# --help
displayHelp () {
	printf "\n" &&
	printf "${bold}${GRE}Script to copy Mercury source files over the Mozilla source tree.${c0}\n" &&
	printf "${bold}${YEL}Use the --win flag to copy the Windows mozconfig${c0}\n" &&
	printf "${bold}${YEL}Use the --cross flag to copy the Windows cross-compile mozconfig${c0}\n" &&
	printf "${bold}${YEL}Use the --sse4 flag to compile with SSE4.1 (no AVX)${c0}\n" &&
	printf "${bold}${YEL}Use the --help flag to show this help${c0}\n" &&
	printf "\n"
}
case $1 in
	--help) displayHelp; exit 0;;
esac

printf "\n" &&
printf "${YEL}Copying Mercury source files over the Mozilla tree...${c0}\n" &&

cp -r -v app/. $HOME/mozilla-unified/browser/app/ &&
cp -r -v browser/. $HOME/mozilla-unified/browser/ &&
cp -r -v build/. $HOME/mozilla-unified/build/ &&
cp -r -v other-licenses/. $HOME/mozilla-unified/other-licenses/ &&
cp -r -v toolkit/. $HOME/mozilla-unified/toolkit/ &&
cp -r -v mozconfig $HOME/mozilla-unified/ &&

copyWin () {
	printf "\n" &&
	printf "${GRE}Copying Windows (Native Build) mozconfig${c0}\n" &&
	printf "\n" &&
	cp -r -v mozconfig-win $HOME/mozilla-unified/mozconfig
}
case $1 in
	--win) copyWin;
esac

copyWinCross () {
	printf "\n" &&
	printf "${GRE}Copying Windows (Cross Compile) mozconfig${c0}\n" &&
	printf "\n" &&
	cp -r -v mozconfig-win-cross $HOME/mozilla-unified/mozconfig
}
case $1 in
	--cross) copyWinCross;
esac

copySSE41 () {
	printf "\n" &&
	printf "${GRE}Copying SSE4.1 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -r -v mozconfig-sse4 $HOME/mozilla-unified/mozconfig
}
case $1 in
	--sse4) copySSE41;
esac

printf "\n" &&
printf "${GRE}Done!\n" &&
printf "\n" &&
printf "${YEL}Setting aliases\n" &&

export NINJA_SUMMARIZE_BUILD=1 &&

export EDITOR=nano &&

export VISUAL=nano &&

alias hgpurge='hg purge' &&

alias hgrebase='hg update --clean' &&

printf "\n" &&
printf "${YEL}Look in this file to see the aliases and what they're for.\n" &&
printf "\n" &&
printf "${GRE}Enjoy Mercury!\n" &&
printf "\n" &&
tput sgr0 &&

exit 0
