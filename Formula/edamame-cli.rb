class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.3.3/edamame_cli-2.3.3-universal-apple-darwin"
  sha256 "c4ddd708f290b49287569ed558916663095899f50a94f0d8436d19055b8b1a60"
  version "2.3.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



