class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.18/edamame_cli-1.3.18-universal-apple-darwin"
  sha256 "e326b0348aef2a53e5de3c96cf73feef87e2657c3b1d930298400523a73ece97"
  version "1.3.18"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



