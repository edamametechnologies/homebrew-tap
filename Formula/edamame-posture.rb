class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.84/edamame_posture-0.9.84-universal-apple-darwin"
  sha256 "d79cd2e95e391b7ce85e0e928486cebb1a08e12798c326efd1d131bb9c5a6e92"
  version "0.9.84"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






