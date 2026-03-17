class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.1.0/edamame_posture-1.1.0-universal-apple-darwin"
  sha256 "13cc48e2a088d961a46d5b6b0c5fb045f2ccb9e3c83ceda9893ffb80aa3596eb"
  version "1.1.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






