class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.0/edamame_posture-1.0.0-universal-apple-darwin"
  sha256 "632616e97c264f55a44d2aa783e2245641b2ee1a152812696d8c3de3dc535af7"
  version "1.0.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






