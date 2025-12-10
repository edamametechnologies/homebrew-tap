class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.83/edamame_cli-0.9.83-universal-apple-darwin"
  sha256 "2604bf341c8dd2bc6848f96c08edc1de82bd2d01a7a33571efb218b7b01495ba"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



