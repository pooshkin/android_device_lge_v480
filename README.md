# android_device_lge_v480
TWRP device tree for v480
All of TWRP 3.x source is public. You can compile it on your own.You can currently use Omni 4.4, Omni 5.1, Omni 6.0 or Omni 7.1.
TWRP source code can be found here:

    https://github.com/omnirom/android_bootable_recovery

Select the newest branch available. This step is not necessary with Omni because Omni already includes TWRP source by default, however, if you are using an older version of Omni, you will probably want to pull from the latest branch (the latest branch will compile successfully in older build trees)

If you are only interested in building TWRP, you may want to try working with a smaller tree. You can try using this manifest. It should work in most cases but there may be some situations where you will need more repos in your tree than this manifest provides:

    https://github.com/lj50036/platform_manifest_twrp_omni

# Getting Started ##
---------------

To get started with OMNI sources to build TWRP, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the OMNIROM trees to build TWRP, use a command like this:

    repo init -u git://github.com/lj50036/platform_manifest_twrp_omni.git -b twrp-6.0
   
Then to sync up:

    repo sync

Then to build:

     cd <source-dir>; . build/envsetup.sh; lunch omni_<device>-eng; mka recoveryimage
