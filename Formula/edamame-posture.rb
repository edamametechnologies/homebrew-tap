class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.6/edamame_posture-1.0.6-universal-apple-darwin"
  sha256 "93bf8c3e9baa26ca17cffce1ee88e70508f3ab3f8d2142011bcfa1502f3cc96b"
  version "1.0.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






