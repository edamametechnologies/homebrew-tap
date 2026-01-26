# typed: true
# frozen_string_literal: true

cask "edamame" do
  version "1.0.0"
  sha256 "2d5d15787d05604b541e93a0701ad6ccb775df505eebf6bc62ff31e80df59a1b"

  url "https://github.com/edamametechnologies/edamame_security/releases/download/v#{version}/edamame-macos-#{version}.pkg"
  name "EDAMAME Security"
  desc "Desktop security application with full UI and enhanced capabilities"
  homepage "https://edamame.tech"

  pkg "edamame-macos-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/EDAMAME/EDAMAME-Security/uninstall.sh",
    sudo:       true,
  }

  caveats <<~EOS
    EDAMAME Security requires admin privileges to install and uninstall.
    This package includes both EDAMAME Security and EDAMAME Helper.
    After installation, you can launch the app from Applications or use edamame_posture CLI.
    
    Note: For full functionality, also install EDAMAME Helper separately:
      brew install --cask edamame-helper
  EOS
end

