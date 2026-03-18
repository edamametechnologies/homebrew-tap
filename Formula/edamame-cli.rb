class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.1.1/edamame_cli-1.1.1-universal-apple-darwin"
  sha256 "556a3670305f40a02f53c26ae7c31932309dc64d758152c764995a3bc3734f22"
  version "1.1.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



