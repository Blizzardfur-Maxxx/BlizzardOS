#!/bin/sh
export PATH="$HOME/opt/cross/bin:$PATH"
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/blizzardos.kernel isodir/boot/blizzardos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "BlizzardOS" {
	multiboot /boot/blizzardos.kernel
}
EOF
grub2-mkrescue -o blizzardos.iso isodir
