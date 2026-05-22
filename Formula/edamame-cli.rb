class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.14/edamame_cli-1.3.14-universal-apple-darwin"
  sha256 "e1cb1e00df0d32e031464ac46d23076a95e699e147853d67b9e31c79960e695f"
  version "1.3.14"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



