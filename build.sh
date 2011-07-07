#!/bin/sh

set -x
vpk.exe ../skin-rainbow_pills
cp ../skin-rainbow_pills.vpk "${D2_ADDON_PATH}/rainbow_pills.vpk"

if [ "$1" == "--run" ]; then
  cygstart steam://run/550
fi

