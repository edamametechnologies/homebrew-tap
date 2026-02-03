# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "1.0.2"
  sha256 "29d329c5a07582e2c89b398d6eb522ccfda6e7e69bd6518135e0d6184e72f343"

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
