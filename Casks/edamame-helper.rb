# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "1.8.1"
  sha256 "034426b7e1c601933b40e253be19967e3c3f8ea9edfc8a2afc7a7766e7201537"

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
