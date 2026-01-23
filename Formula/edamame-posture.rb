class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.87/edamame_posture-0.9.87-universal-apple-darwin"
  sha256 "e98563f857ddf3540cc845b3b627c5452d041238ee0cd5eda21a8783d73392cc"
  version "0.9.87"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






