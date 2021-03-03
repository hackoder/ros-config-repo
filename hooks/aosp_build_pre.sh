#!/usr/bin/env bash

cd "${AOSP_BUILD_DIR}"

# apply community patches
community_patches_dir="${ROOT_DIR}/community_patches"
rm -rf "${community_patches_dir}"
git clone https://github.com/rattlesnakeos/community_patches "${community_patches_dir}"
echo "applying community patch 00001-global-internet-permission-toggle.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00001-global-internet-permission-toggle.patch"
echo "applying community patch 00002-round-icon.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00002-round-icon.patch"

