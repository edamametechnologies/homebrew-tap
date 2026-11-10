# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "2.3.2"
  sha256 "22d20d3154da13be6a5be6623a88d2a90913c3075616ffadd483c9ab78c41b4e"

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
