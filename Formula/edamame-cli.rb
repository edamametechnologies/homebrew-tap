class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.8.2/edamame_cli-1.8.2-universal-apple-darwin"
  sha256 "3bce9023889d21f35dc43ce5863662b66a15b287d7ebbcdf93c7f20c7f068b12"
  version "1.8.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



