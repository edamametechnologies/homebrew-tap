class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.0/edamame_cli-1.0.0-universal-apple-darwin"
  sha256 "9d720017c3e38159d3e1518e39456778443bb57f9939329409b04355e8304ece"
  version "1.0.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



