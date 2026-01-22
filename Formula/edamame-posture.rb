class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.85/edamame_posture-0.9.85-universal-apple-darwin"
  sha256 "5f478e003678ce5b37d7e45c0273e1c236ecc64fd36798dcc5c4541da69414b3"
  version "0.9.85"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






