class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.85/edamame_cli-0.9.85-universal-apple-darwin"
  sha256 "3f4fa1f40c5590f3c1c3dd4e7de2643c1cc740f20ff0d90bcae185720c8e3361"
  version "0.9.85"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



