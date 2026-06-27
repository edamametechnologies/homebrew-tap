class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.6/edamame_cli-1.4.6-universal-apple-darwin"
  sha256 "64e030c4f95100ba02f3465d0f4d982b7ea6465a415479440b004dcb094dd350"
  version "1.4.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



