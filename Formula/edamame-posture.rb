class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.84/edamame_posture-0.9.84-universal-apple-darwin"
  sha256 "f3ec72f5c9dd734cbb9beb470532f3bf2906c2bf8cbc9a582ec7bfc4fc3fbd00"
  version "0.9.84"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






