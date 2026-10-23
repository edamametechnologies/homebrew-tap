class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.1.1/edamame_cli-2.1.1-universal-apple-darwin"
  sha256 "de359cebef01430a7fb8d4be4ce0f71f8f2755459be7d0f8d46929fd2e028243"
  version "2.1.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



