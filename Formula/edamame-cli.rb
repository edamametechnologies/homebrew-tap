class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.1.1/edamame_cli-1.1.1-universal-apple-darwin"
  sha256 "b486a158c7a0d11ee6810ecc474cf83b8d1683335b20810391a25dca1437d9f3"
  version "1.1.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



