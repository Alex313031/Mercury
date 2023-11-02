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

printf "\n" &&
printf "${YEL}Bootstrapping Mozilla Repo...\n" &&
printf "${GRE}\n" &&
tput sgr0 &&

[ -f bootstrap.py ] || curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O bootstrap.py
python3 bootstrap.py "$@"
