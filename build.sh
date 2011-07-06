#!/bin/sh

set -x
PATH="$PATH:/cygdrive/c/Program Files (x86)/Steam/steamapps/common/left 4 dead 2/bin"
D2_ADDON_PATH="/cygdrive/c/Program Files (x86)/Steam/steamapps/common/left 4 dead 2/left4dead2/addons"

vpk ../skin-rainbow_pills
cp ../skin-rainbow_pills.vpk "${D2_ADDON_PATH}/rainbow_pills.vpk"

cygstart steam://run/550

