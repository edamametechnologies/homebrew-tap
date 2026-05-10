class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.5/edamame_cli-1.3.5-universal-apple-darwin"
  sha256 "4f19671b64e40e842c10120ed6d9f34a27058ff8ad41ea65da6c6426d49ad922"
  version "1.3.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



