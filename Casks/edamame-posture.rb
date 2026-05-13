# typed: true
# frozen_string_literal: true

cask "edamame-posture" do
  version "1.3.7"
  sha256 "f215a7aa034a79bb74cd5cf6086596b93a845076b0da2e2564caf6b817ce47a3"

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
