class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.6.0/edamame_cli-1.6.0-universal-apple-darwin"
  sha256 "8ea54a7e8a467b6ed2a3c0fc18d133e8298bb1eda56ed09e2640329d46a73b4a"
  version "1.6.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



