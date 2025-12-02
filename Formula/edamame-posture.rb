class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.82/edamame_posture-0.9.82-universal-apple-darwin"
  sha256 "8dacf264cafda48cfa9741060b7c7e3522acac6335c2233703daa7fe14c0ce06"
  version "0.9.82"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end



