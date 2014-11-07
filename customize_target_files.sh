#/bin/bash
TARGET_FILES=out/target_files/

cp -f other/file_contexts out/target_files/META/
rm -rf $TARGET_FILES/SYSTEM/recovery-from-boot.p
