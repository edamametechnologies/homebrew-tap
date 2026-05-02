class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.0/edamame_cli-1.3.0-universal-apple-darwin"
  sha256 "46195743c6002f30090fa533d27220a706e82fd61d08f9b5d76ee6bf90d02685"
  version "1.3.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



