#!/bin/sh

PACKAGE_NAME="$1"
if [ "$PACKAGE_NAME" == "" ]; then
  echo "please specify package name" 1>&2
  exit 1
fi

set -x
CURDIR=`basename \`pwd\``
PACKAGEDIR="./$PACKAGE_NAME.zip"
cd ../

zip --exclude "*.git*" --exclude "*.sh*" -r "$PACKAGEDIR" "./$CURDIR"
mv "$PACKAGEDIR" "$HOME/Desktop/"

