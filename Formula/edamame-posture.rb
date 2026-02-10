class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.3/edamame_posture-1.0.3-universal-apple-darwin"
  sha256 "ad86ee2039ce6654996622e1e462a3ec50b3680b6feabd8aa68256699f38e9f3"
  version "1.0.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






