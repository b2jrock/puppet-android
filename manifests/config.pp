# Public: specify the android version and directories
class android::config {
  include homebrew

  $sdk_version = 'r22.3-boxen1'
  $ndk_version = 'r9b-boxen1'

  $sdk_dir = "${homebrew::config::installdir}/opt/android-sdk"
  $ndk_dir = "${homebrew::config::installdir}/opt/android-ndk"
}
