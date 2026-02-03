class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.2/edamame_cli-1.0.2-universal-apple-darwin"
  sha256 "e69575622f5d64588c87a647d913f890a462ca94d244636abfdc83907c372aa4"
  version "1.0.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



