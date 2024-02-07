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

# --help
displayHelp () {
	printf "\n" &&
	printf "${bold}${GRE}Script to package Mercury Browser.${c0}\n" &&
	printf "${underline}${YEL}Usage:${c0} package.sh\n" &&
	printf "You can also run ${CYA}export MOZ_MAKE_FLAGS=\"-j#\"${c0} where # is the number of jobs.\n" &&
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
printf "${YEL}Packaging Mercury..\n" &&
printf "${GRE}\n" &&

cd ${HG_SRC_DIR} &&

./mach package -v &&

printf "${GRE}${bold}Done. ${YEL}${bold}You can find a tarball package of the release in:\n" &&
printf "${PWD}/obj.../dist/Mercury....tar.bz2\n" &&
tput sgr0
