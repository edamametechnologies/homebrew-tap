class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.6.1/edamame_cli-1.6.1-universal-apple-darwin"
  sha256 "743cf61fc88ad99211ca6bd58402a91e6200590cc2a5018fc8513120e272ef48"
  version "1.6.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



