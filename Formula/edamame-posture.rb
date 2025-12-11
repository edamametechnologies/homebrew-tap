class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.83/edamame_posture-0.9.83-universal-apple-darwin"
  sha256 "0b4c27f7bc2509b9fd38af2b85c6dc29a1fb40ecb19f733f0c25c2b552b78979"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end





