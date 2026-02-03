class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.2/edamame_posture-1.0.2-universal-apple-darwin"
  sha256 "78f8f7891f43e168344cd8bad0ce151deab09a8b3e18f339cfd39c2e37cc90d7"
  version "1.0.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






