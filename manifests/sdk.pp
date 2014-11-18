# Public: Install android sdk into Homebrew
# shell to it.
#
# Examples
#
#   include android::sdk
class android::sdk($ensure = $android::config::sdk_version) {
  include android
  include java

  homebrew::formula { 'android-sdk':
    before => Package['boxen/brews/android-sdk'],
  }

  package { 'boxen/brews/android-sdk':
    ensure  => $ensure,
    require => Class['java'],
  }
}
