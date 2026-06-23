class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.4/edamame_cli-1.4.4-universal-apple-darwin"
  sha256 "84c17c1aaede4ef7181f975698eba3ddc3b9864976c215330817becfd493409f"
  version "1.4.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



