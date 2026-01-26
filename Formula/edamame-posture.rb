class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.0/edamame_posture-1.0.0-universal-apple-darwin"
  sha256 "603f78edb03568a3109cae07de6dbc84e303794ca1516a5df1a430f45c3c08de"
  version "1.0.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






