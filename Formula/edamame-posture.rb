class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.8/edamame_posture-1.0.8-universal-apple-darwin"
  sha256 "48e86cbf8744731f031e1f9b6864d815f566db506e117d8e08e4edc52f35328b"
  version "1.0.8"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






