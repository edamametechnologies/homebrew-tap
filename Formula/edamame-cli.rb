class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.3.2/edamame_cli-2.3.2-universal-apple-darwin"
  sha256 "5850d01a0ddb9e758a81f0de9276030ecf88bfdd3a0327041b7d4cb057f14276"
  version "2.3.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



