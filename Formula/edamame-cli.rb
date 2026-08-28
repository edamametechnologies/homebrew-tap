class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.8.2/edamame_cli-1.8.2-universal-apple-darwin"
  sha256 "3211826d516ea8fc146e1e8d7c4c7a9a1f73ed5126ce14681db09ad1047e5ab1"
  version "1.8.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



