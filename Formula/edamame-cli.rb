class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.87/edamame_cli-0.9.87-universal-apple-darwin"
  sha256 "c9226aaf70d0422e5aa4f5ff260c3fc36661566b9587a8f1a1f29ff7bf38928c"
  version "0.9.87"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



