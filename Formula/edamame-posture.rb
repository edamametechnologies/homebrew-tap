class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.86/edamame_posture-0.9.86-universal-apple-darwin"
  sha256 "22cbc8aef3670e122af90da2952f7dfc39d4f47325240cc807e389cf778c94c5"
  version "0.9.86"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






