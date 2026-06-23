# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "1.4.4"
  sha256 "5e6c12e322c939a236318970ebd77346abd0421d1990b8a8cd8b8fc9f8b4926a"

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
