# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# NSIS branding defines for unofficial builds.
# The official release build branding.nsi is located in other-license/branding/firefox/
# The nightly build branding.nsi is located in browser/installer/windows/nsis/

# BrandFullNameInternal is used for some registry and file system values
# instead of BrandFullName and typically should not be modified.
!define BrandFullNameInternal "Mercury"
#!define BrandShortName        "Mercury"
!define BrandFullName         "Mercury"
!define CompanyName           "Mercury"
!define URLInfoAbout          "https://github.com/Alex313031/Mercury#readme"
!define URLUpdateInfo         "https://github.com/Alex313031/Mercury/releases"
!define HelpLink              "https://github.com/Alex313031/Mercury/issues"

!define URLStubDownloadX86 "https://github.com/Alex313031/Mercury/releases"
!define URLStubDownloadAMD64 "https://github.com/Alex313031/Mercury/releases/latest"
!define URLStubDownloadAArch64 "https://github.com/Alex313031/Mercury/releases"
!define URLManualDownload "https://github.com/Alex313031/Mercury/releases"
!define URLSystemRequirements "https://www.mozilla.org/firefox/system-requirements/"
!define Channel "release"

# The installer's certificate name and issuer expected by the stub installer
!define CertNameDownload   "Mozilla Corporation"
!define CertIssuerDownload "DigiCert SHA2 Assured ID Code Signing CA"

# Dialog units are used so the UI displays correctly with the system's DPI
# settings.
!define PROFILE_CLEANUP_LABEL_TOP "35u"
!define PROFILE_CLEANUP_LABEL_LEFT "0"
!define PROFILE_CLEANUP_LABEL_WIDTH "100%"
!define PROFILE_CLEANUP_LABEL_HEIGHT "80u"
!define PROFILE_CLEANUP_LABEL_ALIGN "center"
!define PROFILE_CLEANUP_CHECKBOX_LEFT "center"
!define PROFILE_CLEANUP_CHECKBOX_WIDTH "100%"
!define PROFILE_CLEANUP_BUTTON_LEFT "center"
!define INSTALL_BLURB_TOP "137u"
!define INSTALL_BLURB_WIDTH "60u"
!define INSTALL_FOOTER_TOP "-48u"
!define INSTALL_FOOTER_WIDTH "250u"
!define INSTALL_INSTALLING_TOP "70u"
!define INSTALL_INSTALLING_LEFT "0"
!define INSTALL_INSTALLING_WIDTH "100%"
!define INSTALL_PROGRESS_BAR_TOP "112u"
!define INSTALL_PROGRESS_BAR_LEFT "20%"
!define INSTALL_PROGRESS_BAR_WIDTH "60%"
!define INSTALL_PROGRESS_BAR_HEIGHT "12u"

!define PROFILE_CLEANUP_CHECKBOX_TOP_MARGIN "20u"
!define PROFILE_CLEANUP_BUTTON_TOP_MARGIN "20u"
!define PROFILE_CLEANUP_BUTTON_X_PADDING "40u"
!define PROFILE_CLEANUP_BUTTON_Y_PADDING "4u"

# Font settings that can be customized for each channel
!define INSTALL_HEADER_FONT_SIZE 28
!define INSTALL_HEADER_FONT_WEIGHT 400
!define INSTALL_INSTALLING_FONT_SIZE 28
!define INSTALL_INSTALLING_FONT_WEIGHT 400

# The dialog units for the bitmap's dimensions should match exactly with the
# bitmap's width and height in pixels.
!define APPNAME_BMP_WIDTH_DU 159u
!define APPNAME_BMP_HEIGHT_DU 50u
!define INTRO_BLURB_WIDTH_DU "230u"
!define INTRO_BLURB_EDGE_DU "198u"
!define INTRO_BLURB_LTR_TOP_DU "16u"
!define INTRO_BLURB_RTL_TOP_DU "11u"
!define INSTALL_FOOTER_TOP_DU "-48u"

# UI Colors that can be customized for each channel
!define FOOTER_CONTROL_TEXT_COLOR_NORMAL 0x000000
!define FOOTER_CONTROL_TEXT_COLOR_FADED 0x999999
!define FOOTER_BKGRD_COLOR 0xFFFFFF
!define INSTALL_FOOTER_TEXT_COLOR 0xFFFFFF
!define INTRO_BLURB_TEXT_COLOR 0xFFFFFF
!define INSTALL_BLURB_TEXT_COLOR 0xFFFFFF
!define INSTALL_PROGRESS_TEXT_COLOR_NORMAL 0xFFFFFF
!define COMMON_TEXT_COLOR 0xFFFFFF
!define COMMON_TEXT_COLOR_NORMAL 0xFFFFFF
!define COMMON_TEXT_COLOR_FADED 0xA1AAB3
!define COMMON_BKGRD_COLOR 0x0F1B26
!define COMMON_BACKGROUND_COLOR 0x0F1B26
!define INSTALL_INSTALLING_TEXT_COLOR 0xFFFFFF
