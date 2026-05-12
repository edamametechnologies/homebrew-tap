class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.6/edamame_cli-1.3.6-universal-apple-darwin"
  sha256 "db744c0bc40fa49ad9d75b967f6fb4e58f4a950a25e90f17c772a46427f86096"
  version "1.3.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



