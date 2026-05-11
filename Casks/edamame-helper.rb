# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "1.3.5"
  sha256 "6ecd17df46c384b4d11c996e83dae93b0d599e2beca53b67bfa6760b1671a495"

  url "https://github.com/edamametechnologies/edamame_helper/releases/download/v#{version}/edamame-helper-macos-#{version}.pkg"
  name "EDAMAME Helper"
  desc "This is the open source helper for the EDAMAME Security application"
  homepage "https://github.com/edamametechnologies/edamame_helper"

  pkg "edamame-helper-macos-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/EDAMAME/EDAMAME-Helper/uninstall.sh",
    sudo:       true,
  }

  caveats <<~EOS
    This application requires admin privileges to install and uninstall.
    The package installs an app-like helper bundle with an embedded Endpoint
    Security provisioning profile and registers a LaunchDaemon that points into
    that bundle.
  EOS
end
