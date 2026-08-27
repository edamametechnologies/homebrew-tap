class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.8.1/edamame_cli-1.8.1-universal-apple-darwin"
  sha256 "f2ba8b4a39e66221f6a7cbee144fc6a29d264aa17aa20a62ee5aac837b2d9b17"
  version "1.8.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



