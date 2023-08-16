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
	printf "${bold}${GRE}Script to build .deb package of Mercury Browser.${c0}\n" &&
	printf "${underline}${YEL}Usage:${c0} make_deb.sh\n" &&
	printf "${underline}${YEL}Use the \`--no-clobber\` flag to use already extracted files.\n" &&
	printf "\n"
}
case $1 in
	--help) displayHelp; exit 0;;
esac

buildStale () {
	printf "\n" &&
	printf "${YEL}NOTE: --no-clobber option was passed\n" &&
	sleep 1s &&

	printf "\n" &&
	rm -f -v dist.deb &&
	printf "\n" &&

	printf "${GRE}Building .deb package...${CYA}\n" &&

	tar xvf ./*.tar.bz2 -C ./dist/usr/lib/ &&
	printf "\n"
	dpkg-deb -Zgzip --build --root-owner-group ./dist &&

	printf "\n" &&
	printf "${GRE}${bold}Build Completed!\n" &&
	printf "${GRE}${bold}You can now install the package with \`sudo dpkg -i dist.deb\`.\n" &&
	printf "${GRE}${bold}Remember to rename \"dist.deb\" to mirror the .tar.bz2 name if you are distributing to others.\n" &&
	tput sgr0
}
case $1 in
	--no-clobber) buildStale; exit 0;;
esac

printf "\n" &&
printf "${YEL}Cleaning any existing files...\n" &&
sleep 1s &&

rm -r -f -v ./dist/usr/lib/mercury &&

printf "\n" &&
rm -f -v dist.deb &&
printf "\n" &&

printf "${GRE}Building .deb package...${CYA}\n" &&

tar xvf ./*.tar.bz2 -C ./dist/usr/lib/ &&
printf "\n"
dpkg-deb -Zgzip --build --root-owner-group ./dist &&

printf "\n" &&
printf "${GRE}${bold}Build Completed!\n" &&
printf "${GRE}${bold}You can now install the package with \`sudo dpkg -i dist.deb\`.\n" &&
printf "${GRE}${bold}Remember to rename \"dist.deb\" to mirror the .tar.bz2 name if you are distributing to others.\n" &&
tput sgr0