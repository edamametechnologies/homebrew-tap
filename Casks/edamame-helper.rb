# typed: true
# frozen_string_literal: true

cask "edamame-helper" do
  version "1.2.0"
  sha256 "24b54f78b09c802c2cfbe823202b666114251eb68c2a743beeefc31cb09d2b37"

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
