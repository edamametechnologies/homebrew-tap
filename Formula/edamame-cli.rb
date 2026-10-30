class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.2.3/edamame_cli-2.2.3-universal-apple-darwin"
  sha256 "ebb29e0349c365157308a9b165ede39a49f26ce5c3d91976a810e7dc78df34cb"
  version "2.2.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



