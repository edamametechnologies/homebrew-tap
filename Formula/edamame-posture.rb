class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.3/edamame_posture-1.0.3-universal-apple-darwin"
  sha256 "51e29e2e753658ca8b3299e9aa53d4abde1a67b3f6ba2ad85d723ef8e882071f"
  version "1.0.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






