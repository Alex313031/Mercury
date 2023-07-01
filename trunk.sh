#!/bin/bash

# Copyright (c) 2023 Alex313031 and Midzer.

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
	printf "${bold}${GRE}Script to Rebase/Sync the Mozilla repo on Linux.${c0}\n" &&
	printf "\n"
}
case $1 in
	--help) displayHelp; exit 0;;
esac

printf "\n" &&
printf "${bold}${GRE}Script to Rebase/Sync Mozilla repo on Linux.${c0}\n" &&
printf "\n" &&
printf "${YEL}Rebasing/Syncing with mozilla-unified Mercurial repository...${c0}\n" &&

MERCURY_BRANCH="esr115"
export MERCURY_BRANCH &&

cd $HOME/mozilla-unified &&

rm -r -f ./obj-x86_64-pc-linux-gnu &&

hg pull &&

hg update --clean -C central &&

hg purge &&

hg pull &&

printf "${YEL}Checking out the ${MERCURY_BRANCH} branch...\n" &&
tput sgr0 &&

hg update --clean -C $MERCURY_BRANCH &&

./mach bootstrap &&

printf "\n" &&

printf "${GRE}Done! ${YEL}You can now run ./setup.sh\n"
tput sgr0

exit 0
