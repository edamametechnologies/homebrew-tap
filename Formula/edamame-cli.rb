class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.5/edamame_cli-1.0.5-universal-apple-darwin"
  sha256 "4ced324ecfa73e4ae157d5e8affe5d97f3e676a129f53df2df93bca6ca1381bf"
  version "1.0.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



