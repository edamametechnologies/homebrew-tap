class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.83/edamame_posture-0.9.83-universal-apple-darwin"
  sha256 "78eff856bb41e79a0a8e80e246d99e52505c701c75f9fa918d082768a001e42f"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end





