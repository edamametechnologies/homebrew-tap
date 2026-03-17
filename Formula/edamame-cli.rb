class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.1.0/edamame_cli-1.1.0-universal-apple-darwin"
  sha256 "32fa2ad5f89f3a187ac4c7e877ff2c1e5ad88f53b3db7376c7a18b4b465aa671"
  version "1.1.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



