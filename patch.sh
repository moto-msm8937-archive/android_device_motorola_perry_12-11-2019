#!/bin/bash
croot
cd build/core
#git remote add -f android_build_core https://github.com/GrowtopiaJaw/android_build_core
#git cherry-pick 928ef1c7d6ba092c1279fe6aa2d5ab2a3683cde8
wget -O whitelist.patch "https://github.com/GrowtopiaJaw/android_build_core/commit/928ef1c7d6ba092c1279fe6aa2d5ab2a3683cde8.patch"
git am < whitelist.patch
rm whitelist.patch
