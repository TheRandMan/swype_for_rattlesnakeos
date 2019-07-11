#!/bin/bash

SWYPE="https://github.com/TheRandMan/microg_for_rattlesnakeos/raw/master/swype/libjni_latinime.so"
mkdir -p $BUILD_DIR/swype
echo "Downloading swype $SWYPE"
wget -O $BUILD_DIR/mods/libjni_latinime.so $BOOT_ANIMATION
sed -i "\$aPRODUCT_COPY_FILES += mods/libjni_latinime.so:system/lib64/libjni_latinime.so" ${BUILD_DIR}/build/make/target/product/core.mk
