class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.1.2/edamame_posture-1.1.2-universal-apple-darwin"
  sha256 "486fa0cad35219d1fa873fcd84fc3244c7d1ed23896456246868282d921ead4f"
  version "1.1.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






