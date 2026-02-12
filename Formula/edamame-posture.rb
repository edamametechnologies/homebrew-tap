class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.4/edamame_posture-1.0.4-universal-apple-darwin"
  sha256 "954f88d9e02908bc8b4753f531a3c9201525f6b64eecc32d3e21cce12d2b1bc0"
  version "1.0.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






