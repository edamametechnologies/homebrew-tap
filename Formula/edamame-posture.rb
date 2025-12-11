class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.83/edamame_posture-0.9.83-universal-apple-darwin"
  sha256 "b18530f0cd53b2e07b1c183cad57cb98e029d6f79d88083d3701980f69b2e85d"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end





