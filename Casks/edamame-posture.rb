# typed: true
# frozen_string_literal: true

cask "edamame-posture" do
  version "1.3.22"
  sha256 "b9c51f9022c91154c7c9569ad1d65757f1e68611aefaaebbfba2f6b19e28ce8e"

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
