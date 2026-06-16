# typed: true
# frozen_string_literal: true

cask "edamame" do
  version "1.4.1"
  sha256 "7ec571fb1d22affa21bc6759276fef2de7bdde1abb4add5d0ce446f8d8f105e8"

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
      brew install --cask edamametechnologies/tap/edamame-helper
  EOS
end

