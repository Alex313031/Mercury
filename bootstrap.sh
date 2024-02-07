#!/bin/bash

# Copyright (c) 2024 Alex313031.

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

printf "\n" &&
printf "${bold}${GRE}Script to clone and initialize the Mozilla source tree.${c0}\n" &&
printf "${bold}${YEL}Use the --win flag for Windows.${c0}\n" &&
printf "${bold}${YEL}Use the --linux flag for Linux.${c0}\n" &&
printf "${bold}${YEL}Use the --mac flag for MacOS.${c0}\n" &&

makeWinDir () {
	mkdir -p /c/mozilla-source/ &&
	cd /c/mozilla-source/ &&
	printf "\n" &&
	printf "${YEL}Bootstrapping Mozilla Repo...\n" &&
	printf "\n" &&
	tput sgr0 &&
	curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O &&
	python3 bootstrap.py
}
case $1 in
	--win) makeWinDir; exit 0;;
esac

makeLinuxDir () {
	cd $HOME &&
	printf "\n" &&
	printf "${YEL}Bootstrapping Mozilla Repo...\n" &&
	printf "\n" &&
	tput sgr0 &&
	curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O &&
	python3 bootstrap.py
}
case $1 in
	--linux) makeLinuxDir; exit 0;;
esac

makeMacDir () {
	cd $HOME &&
	printf "\n" &&
	printf "${YEL}Bootstrapping Mozilla Repo...\n" &&
	printf "\n" &&
	tput sgr0 &&
	curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O &&
	python3 bootstrap.py
}
case $1 in
	--mac) makeMacDir; exit 0;;
esac

tput sgr0
