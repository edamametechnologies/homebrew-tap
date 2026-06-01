class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.21/edamame_cli-1.3.21-universal-apple-darwin"
  sha256 "6b7c1e2d5b596ba2790fea2cb88591b670ef973e7584e0cead13d99b077b38b3"
  version "1.3.21"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



