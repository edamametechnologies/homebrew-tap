class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.82/edamame_cli-0.9.82-universal-apple-darwin"
  sha256 "48db3c3040b51ec0654a77fa82f6c880edc2634d5dc58902456f76aa2c6d97f2"
  version "0.9.82"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



