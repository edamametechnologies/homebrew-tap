class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.3/edamame_posture-1.0.3-universal-apple-darwin"
  sha256 "d271eeef3a5cae48b3eae326ebc1678b19f79c58496a2eea667944728e724248"
  version "1.0.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






