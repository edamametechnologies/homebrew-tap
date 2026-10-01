# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "2.0.3"
  sha256 "b4024fbf6f186f3b0d8766e8d37477fec209e26096ca0d510fa3e98a154e38e2"

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
