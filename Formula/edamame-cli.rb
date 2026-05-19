class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.12/edamame_cli-1.3.12-universal-apple-darwin"
  sha256 "769555b880f0e19c1c7d11f6ccd0a944c93311acd4ae67c86e2c9b570283ea1e"
  version "1.3.12"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



