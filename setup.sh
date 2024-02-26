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
	printf "${bold}${GRE}Script to copy Mercury source files over the Mozilla source tree.${c0}\n" &&
	printf "${bold}${YEL}Use the --win flag to copy the Windows mozconfig${c0}\n" &&
	printf "${bold}${YEL}Use the --cross flag to copy the Windows cross-compile mozconfig${c0}\n" &&
	printf "${bold}${YEL}Use the --cross-avx2 flag to copy the Windows AVX2 cross-compile mozconfig${c0}\n" &&
	printf "${bold}${YEL}Use the --sse3 flag to make an SSE3 build${c0}\n" &&
	printf "${bold}${YEL}Use the --win-sse3 flag to make an SSE3 Windows build${c0}\n" &&
	printf "${bold}${YEL}Use the --sse4 flag to make an SSE4.1 build${c0}\n" &&
	printf "${bold}${YEL}Use the --win-sse4 flag to make an SSE4.1 Windows build${c0}\n" &&
	printf "${bold}${YEL}Use the --avx2 flag to make an AVX2 build${c0}\n" &&
	printf "${bold}${YEL}Use the --win-avx2 flag to make an AVX2 Windows build${c0}\n" &&
	printf "${bold}${YEL}Use the --debug flag to make a debug Linux build${c0}\n" &&
	printf "${bold}${YEL}Use the --win-debug flag to make a debug Windows build${c0}\n" &&
	printf "${bold}${YEL}Use the --mac flag to make a MacOS x64 build${c0}\n" &&
	printf "${bold}${YEL}Use the --mac-arm flag to make a MacOS arm64 build${c0}\n" &&
	printf "${bold}${YEL}Use the --mac-cross flag to to copy the MacOS x64 cross-compile mozconfig${c0}\n" &&
	printf "${bold}${YEL}Use the --mac-arm-cross flag to to copy the MacOS arm64 cross-compile mozconfig${c0}\n" &&
	printf "${bold}${YEL}Use the --arm64 flag to make a Linux arm64 build${c0}\n" &&
	printf "${bold}${YEL}Use the --help flag to show this help${c0}\n" &&
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
printf "${YEL}Copying Mercury source files over the Mozilla tree...${c0}\n" &&

cp -r -v ./app/. ${HG_SRC_DIR}/browser/app/ &&
cp -r -v ./browser/. ${HG_SRC_DIR}/browser/ &&
cp -r -v ./build/. ${HG_SRC_DIR}/build/ &&
cp -r -v ./devtools/. ${HG_SRC_DIR}/devtools/ &&
cp -r -v ./ipc/. ${HG_SRC_DIR}/ipc/ &&
cp -r -v ./moz.build ${HG_SRC_DIR}/ &&
cp -r -v ./netwerk/. ${HG_SRC_DIR}/netwerk/ &&
cp -r -v ./other-licenses/. ${HG_SRC_DIR}/other-licenses/ &&
mkdir -p -v ${HG_SRC_DIR}/policies &&
cp -r -v ./policies/. ${HG_SRC_DIR}/policies/ &&
cp -r -v ./toolkit/. ${HG_SRC_DIR}/toolkit/ &&
cp -r -v ./mozconfigs/mozconfig ${HG_SRC_DIR} &&

copyWin () {
	printf "\n" &&
	printf "${GRE}Copying Windows (Native Build) mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-win ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--win) copyWin;
esac

copyWinCross () {
	printf "\n" &&
	printf "${GRE}Copying Windows (Cross Compile) mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-win-cross ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--cross) copyWinCross;
esac

copySSE3 () {
	printf "\n" &&
	printf "${GRE}Copying SSE3 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-sse3 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--sse3) copySSE3;
esac

copyWinSSE3 () {
	printf "\n" &&
	printf "${GRE}Copying Windows SSE3 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-win-sse3 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--win-sse3) copyWinSSE3;
esac

copySSE41 () {
	printf "\n" &&
	printf "${GRE}Copying SSE4.1 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-sse4 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--sse4) copySSE41;
esac

copyWinSSE41 () {
	printf "\n" &&
	printf "${GRE}Copying Windows SSE4.1 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-win-sse4 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--win-sse4) copyWinSSE41;
esac

copyAVX2 () {
	printf "\n" &&
	printf "${GRE}Copying AVX2 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/context.py ${HG_SRC_DIR}/python/mozbuild/mozbuild/frontend/ &&
	cp -v mozconfigs/mozconfig-avx2 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--avx2) copyAVX2;
esac

copyWinAVX2 () {
	printf "\n" &&
	printf "${GRE}Copying Windows AVX2 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/context.py ${HG_SRC_DIR}/python/mozbuild/mozbuild/frontend/ &&
	cp -v mozconfigs/mozconfig-win-avx2 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--win-avx2) copyWinAVX2;
esac

copyWinCrossAVX2 () {
	printf "\n" &&
	printf "${GRE}Copying Windows AVX2 (Cross Compile) mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/context.py ${HG_SRC_DIR}/python/mozbuild/mozbuild/frontend/ &&
	cp -v mozconfigs/mozconfig-win-avx2-cross ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--cross-avx2) copyWinCrossAVX2;
esac

copyDebug () {
	printf "\n" &&
	printf "${GRE}Copying debug mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-debug ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--debug) copyDebug;
esac

copyWinDebug () {
	printf "\n" &&
	printf "${GRE}Copying Windows debug mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-win-debug ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--win-debug) copyWinDebug;
esac

copyMac () {
	printf "\n" &&
	printf "${GRE}Copying MacOS x64 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/context.py ${HG_SRC_DIR}/python/mozbuild/mozbuild/frontend/ &&
	cp -v mozconfigs/mozconfig-macos-x64 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--mac) copyMac;
esac

copyMacArm () {
	printf "\n" &&
	printf "${GRE}Copying MacOS ARM64 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-macos-arm64 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--mac-arm) copyMacArm;
esac

copyMacCross () {
	printf "\n" &&
	printf "${GRE}Copying MacOS x64 (Cross Compile) mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/context.py ${HG_SRC_DIR}/python/mozbuild/mozbuild/frontend/ &&
	cp -v mozconfigs/mozconfig-macos-x64-cross ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--mac-cross) copyMacCross;
esac

copyMacArmCross () {
	printf "\n" &&
	printf "${GRE}Copying MacOS ARM64 (Cross Compile) mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/mozconfig-macos-arm64-cross ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--mac-arm-cross) copyMacArmCross;
esac

copyLinuxArm64 () {
	printf "\n" &&
	printf "${GRE}Copying Linux ARM64 mozconfig${c0}\n" &&
	printf "\n" &&
	cp -v mozconfigs/context.py ${HG_SRC_DIR}/python/mozbuild/mozbuild/frontend/ &&
	cp -v mozconfigs/mozconfig-arm64 ${HG_SRC_DIR}/mozconfig
}
case $1 in
	--arm64) copyLinuxArm64;
esac

printf "\n" &&
printf "${GRE}Done!\n" &&
printf "\n" &&
printf "${YEL}Setting aliases\n" &&

export EDITOR=nano &&

export VISUAL=nano &&

alias hgpurge='hg purge' &&

alias hgrebase='hg update --clean' &&

printf "\n" &&
printf "${YEL}Look in this file to see the aliases and what they're for.\n" &&
printf "\n" &&
printf "${GRE}Enjoy Mercury!\n" &&
tput sgr0
