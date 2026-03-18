class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.1.1/edamame_posture-1.1.1-universal-apple-darwin"
  sha256 "6ed0451ab71a466e7ac927803de4d7905a06a82a12dfc26a4c4713804e881eb9"
  version "1.1.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






