# TWRP for Tolino Shine 3 eInk reader
### State
TWRP builds and is fully functional (hopefully).

### Test without installation
1) enter fastboot;
2) in cmd do `fastboot boot <path_to_recovery_image>`

### Installation
1) enter fastboot;
2) in cmd do `fastboot flash recovery <path_to_recovery_image>`

### How to enter recovery
1) completely turn off device;
2) press and hold "power" button;
3) wait until recovery loads and release button;

### How to build TWRP
1. `repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-5.1`
2. `repo sync -n -j 1 && repo sync -l -j 4`
3. `clone this repo to <twrp_repo>/device/TOLINO/shine_3`
4. apply patches from `<twrp_repo>/device/TOLINO/shine_3/patches` directory
5. open terminal in `<twrp_repo>` directory;
6. `. build/envsetup.sh`
7. `lunch omni_shine_3-userdebug`
8. `mka recoveryimage`

if you want to enable A2 mode:
1. clone [monochrome theme repo](https://github.com/Ryogo-Z/twrp_monochrome_portrait_hdpi_theme/) into `<twrp_repo>/device/TOLINO/shine_3/theme`
2. uncomment `TW_IMX_EINK_MONOCHROME` in `BoardConfig.mk`

if everything is successful you should find built recovery by path <twrp_repo>/out/target/product/shine_3/recovery.img
