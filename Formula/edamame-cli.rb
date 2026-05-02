class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.0/edamame_cli-1.3.0-universal-apple-darwin"
  sha256 "8bec4f550e9ae4782d0c9439f231e2dc5f3c8a9920882c9c2953f2aa7cb422de"
  version "1.3.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



