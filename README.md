# Android Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-android.png?branch=master)](https://travis-ci.org/boxen/puppet-android)

## Usage

The `sdk` is available:
```puppet
include android::sdk
```

The `ndk` is also available:
```puppet
include android::ndk
```

The `3`, `4`, `7`, `8`, `10`, `11`, `12`, `13`, `14`, `15`, `16` and `17` version is also available:
```puppet
include android::17
```

ensure a `version` is installed for a certain android version
```puppet
# install 17 version for default(platform, add_on)
android::version { '17': }

# install 17 version for all
android::version { '17':
  options => ['platform', 'add_on', 'system_image', 'sample'] 
}
```

ensure a `platform` is installed for a certain android version
```puppet
android::platform { 'android-17': }
```

ensure a `system_image` is installed for a certain android version
```puppet
android::system_image { 'sysimg-17': }
```

ensure a `add_on` is installed for a certain android version
```puppet
android::add_on { 'addon-google_apis-google-17': }
```

ensure a `sample` is installed for a certain android version
```puppet
android::sample { 'sample-17': }
```

ensure a `platform-tools` is installed
```puppet
include android::platform_tools
```

ensure a `extra` is installed for a certain android version
```puppet
android::extra { 'extra-google-google_play_services': }
```

ensure a `doc` is installed
```puppet
include android::doc
```

ensure a 'studio' is installed
```puppet
include android::studio
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
