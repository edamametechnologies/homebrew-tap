class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.3/edamame_cli-1.0.3-universal-apple-darwin"
  sha256 "3fb2e7de38c34977ab1ba32c2d7db2c8bdfafb2c90b84cdccb8721e974cc09a0"
  version "1.0.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



