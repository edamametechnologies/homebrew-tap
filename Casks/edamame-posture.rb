# typed: true
# frozen_string_literal: true

cask "edamame-posture" do
  version "1.5.0"
  sha256 "6dac95f31d389ea38fb1a04f9ccb4cbd4afaba848814a6148c745f37c6c64cf4"

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
