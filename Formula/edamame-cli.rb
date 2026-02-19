class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.6/edamame_cli-1.0.6-universal-apple-darwin"
  sha256 "74f2d7f16028ca1a85fc0ab9208bcdd899f57414efd5994da8216eaa95c44404"
  version "1.0.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



