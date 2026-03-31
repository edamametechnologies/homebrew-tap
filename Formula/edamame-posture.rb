class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.1.4/edamame_posture-1.1.4-universal-apple-darwin"
  sha256 "db3d3c4e9efb6ff2348741d14e4f4246faed9de956812e0f1bdca137d0ed3374"
  version "1.1.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






