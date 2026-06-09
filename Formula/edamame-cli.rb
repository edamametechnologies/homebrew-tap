class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.0/edamame_cli-1.4.0-universal-apple-darwin"
  sha256 "347f9f8363851740dcf583d389e3baa519404cbfe1af44e285cb5805f3c093ff"
  version "1.4.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



