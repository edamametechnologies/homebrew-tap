class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.7/edamame_posture-1.0.7-universal-apple-darwin"
  sha256 "49cfb4b909f789b2e220a00901aadc90e89cc304326b481198684d8c5623e62b"
  version "1.0.7"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






