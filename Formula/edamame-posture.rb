class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.83/edamame_posture-0.9.83-universal-apple-darwin"
  sha256 "a2494dcb9384c79dfc026e0167a0bc59fb10ce7786acbd9d0208de6744d51b73"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end





