class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.6/edamame_cli-1.4.6-universal-apple-darwin"
  sha256 "5d011a6527de193f66c433c92424cd10643400e480c3f35398879c409546ce74"
  version "1.4.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



