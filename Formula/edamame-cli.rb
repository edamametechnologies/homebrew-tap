class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.1.4/edamame_cli-1.1.4-universal-apple-darwin"
  sha256 "48278849a35953d1861fc4a4665e372ca627f269b5863cfb6efed5c8f7404628"
  version "1.1.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



