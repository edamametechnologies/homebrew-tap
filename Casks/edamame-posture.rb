# typed: true
# frozen_string_literal: true

cask "edamame-posture" do
  version "1.4.5"
  sha256 "ac4500611f469f5706a08b5bc9422108158d713ed4673eeb38d5c19f701ad66c"

  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v#{version}/edamame-posture-macos-#{version}.pkg"
  name "EDAMAME Posture"
  desc "EDAMAME Security posture analysis and remediation CLI"
  homepage "https://github.com/edamametechnologies/edamame_posture_cli"

  pkg "edamame-posture-macos-#{version}.pkg"

  uninstall delete: [
    "/usr/local/bin/edamame_posture",
    "/Library/Application Support/EDAMAME/EDAMAME-Posture/edamame_posture.app",
  ]

  caveats <<~EOS
    This package requires admin privileges to install.
    The package installs an app-like bundle with an embedded Endpoint Security
    provisioning profile and exposes /usr/local/bin/edamame_posture as a
    symlink into that bundle.
  EOS
end
