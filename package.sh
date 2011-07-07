#!/bin/sh

PACKAGE_NAME="$1"
if [ "$PACKAGE_NAME" == "" ]; then
  echo "please specify package name" 1>&2
  exit 1
fi

set -x

mkdir $PACKAGE_NAME
cp ./readme.txt ./${PACKAGE_NAME}/
cp "${D2_ADDON_PATH}/${PACKAGE_NAME}.vpk" ./${PACKAGE_NAME}/

zip -r $PACKAGE_NAME.zip $PACKAGE_NAME/
mv $PACKAGE_NAME.zip $HOME/Desktop/
rm -r $PACKAGE_NAME/

