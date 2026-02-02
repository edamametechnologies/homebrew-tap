class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.0.1/edamame_posture-1.0.1-universal-apple-darwin"
  sha256 "56eeea25d50c6b74778ba47ab1605c9daef049e489c6dd02d0442f5b9b8c8b72"
  version "1.0.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






