class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.84/edamame_cli-0.9.84-universal-apple-darwin"
  sha256 "f0da1f91a8edf60f9a87ce677b12918e860b596a9508904cca51cdec85423715"
  version "0.9.84"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



