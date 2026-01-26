class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.0/edamame_posture-1.0.0-universal-apple-darwin"
  sha256 "270f195fe845aa3b8bb7daf5b7881d73791239fd6693ae39907532aa97e6e0b4"
  version "1.0.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






