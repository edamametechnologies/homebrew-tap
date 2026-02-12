# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "1.0.4"
  sha256 "c20f86dc0019b06ed9e0460ea3499075ca3d1523bace3b3cd25fbf2826bfe722"

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
  EOS
end
