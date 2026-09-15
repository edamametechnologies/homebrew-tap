class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.9.0/edamame_cli-1.9.0-universal-apple-darwin"
  sha256 "14b2c76e20d9c519e2d97e4b8565497f3c164e084536cb0709e1a04e76c4fa7e"
  version "1.9.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



