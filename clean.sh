#!/bin/sh
export PATH="$HOME/opt/cross/bin:$PATH"
set -e
. ./config.sh

for PROJECT in $PROJECTS; do
  (cd $PROJECT && $MAKE clean)
done

rm -rf sysroot
rm -rf isodir
rm -rf blizzardos.iso
