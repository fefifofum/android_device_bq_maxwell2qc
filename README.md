OmniROM device configuration for the bq Maxwell 2 Quad Core.

How to Build
---------------

Initialise from OmniROM:

    repo init -u git://github.com/omnirom/android.git -b android-4.4

Use the following local manifest:

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
      <project name="fefifofum/android_device_bq_maxwell2qc" path="device/bq/maxwell2qc" remote="github" revision="android-4.4" />
      <project name="fefifofum/android_kernel_bq_maxwell2qc" path="kernel/bq/maxwell2qc" remote="github" revision="android-4.4" />
      <project name="fefifofum/proprietary_vendor_bq" path="vendor/bq" remote="github" revision="android-4.4" />
    </manifest>

Sync and build:

    repo sync -j4 -f --no-clone-bundle
    . build/envsetup.sh
    brunch maxwell2qc
