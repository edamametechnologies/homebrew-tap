class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.8.5/edamame_cli-1.8.5-universal-apple-darwin"
  sha256 "0019893597b08dc4bff04b9a62a4aba970209b10b471a52c2bd5deb96cd90b6b"
  version "1.8.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



