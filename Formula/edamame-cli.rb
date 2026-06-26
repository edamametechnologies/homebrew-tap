class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.6/edamame_cli-1.4.6-universal-apple-darwin"
  sha256 "d20a1a4085a1fe7e89e5d908bc41c8ee9cf0223b596693d99c55ba60ed8c3e6f"
  version "1.4.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



