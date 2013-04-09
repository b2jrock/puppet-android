# Android Puppet Module for Boxen

[![Build Status](https://travis-ci.org/aafwu00/puppet-android.png?branch=master)](https://travis-ci.org/aafwu00/puppet-android)

## Usage

The `sdk` is available:
```puppet
include android::sdk
```

The `ndk` is also available:
```puppet
include android::ndk
```

# ensure a platform is installed for a certain android version
```puppet
anddroid:platform { 'android-17': }
```

# ensure a system image is installed for a certain android version
```puppet
android::system_image { 'sysimg-17': }
```

# ensure a add on is installed for a certain android version
```puppet
android::add_on { 'addon-google_apis-google-17': }
```

# ensure a sample is installed for a certain android version
```puppet
android::sample { 'sample-17': }
```

## Required Puppet Modules

* `boxen`
* `homebrew`
* `stdlib`
* `java`

## Environment

Once installed, you can access the following variables in your environment, projects, etc:

* ANDROID_HOME: android home directory
* ANDROID_SDK_ROOT: android sdk directory

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.