class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.15/edamame_cli-1.3.15-universal-apple-darwin"
  sha256 "9a41b98e8fbd733d9326f3e394fcc2178523dcb28c9c4af4d2347b6dc2c59c73"
  version "1.3.15"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



