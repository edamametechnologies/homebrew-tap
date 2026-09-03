class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.8.4/edamame_cli-1.8.4-universal-apple-darwin"
  sha256 "57b2bcf2db22d07a3705c35f7894c2e1934142325da931480c7d86fe7bf3b6db"
  version "1.8.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



