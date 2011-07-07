#!/bin/sh

PACKAGE_NAME="$1"
if [ "$PACKAGE_NAME" == "" ]; then
  echo "please specify package name" 1>&2
  exit 1
fi

set -x
vpk.exe "../skin-${PACKAGE_NAME}"
cp "../skin-${PACKAGE_NAME}.vpk" "${D2_ADDON_PATH}/${PACKAGE_NAME}.vpk"

if [ "$2" == "--run" ]; then
  cygstart steam://run/550
fi

