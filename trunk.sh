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
	printf "${bold}${GRE}Script to Rebase/Sync the Mozilla repo on Linux.${c0}\n" &&
	printf "\n"
}
case $1 in
	--help) displayHelp; exit 0;;
esac

# mozilla source dir env variable
if [ -z "${HG_SRC_DIR}" ]; then 
    HG_SRC_DIR="$HOME/mozilla-unified"
    export HG_SRC_DIR
else 
    HG_SRC_DIR="${HG_SRC_DIR}"
    export HG_SRC_DIR
fi

printf "\n" &&
printf "${bold}${GRE}Script to Rebase/Sync Mozilla repo on Linux.${c0}\n" &&
printf "\n" &&
printf "${YEL}Rebasing/Syncing with mozilla-unified Mercurial repository...${c0}\n" &&

MERCURY_BRANCH="esr115"
export MERCURY_BRANCH &&

cd ${HG_SRC_DIR} &&

rm -r -f ./obj-x86_64-pc-linux-gnu &&

rm -r -f ./obj-x86_64-pc-windows-msvc &&

hg pull &&

hg update --clean -C central &&

hg purge &&

hg pull &&

printf "\n" &&
printf "${GRE}Checking out the ${MERCURY_BRANCH} branch...${c0}\n" &&

hg update --clean -C $MERCURY_BRANCH &&

printf "\n" &&
printf "${GRE}Running \`./mach bootstrap\`...${c0}\n" &&

./mach bootstrap &&

printf "\n" &&

printf "${GRE}Done! ${YEL}You can now run ./setup.sh${c0}\n"
tput sgr0

exit 0
