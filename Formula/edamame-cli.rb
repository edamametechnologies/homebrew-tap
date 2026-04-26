class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.2.2/edamame_cli-1.2.2-universal-apple-darwin"
  sha256 "4c3e78f6860c04ba0a2ac689abedf3ba7501fc67a235fd85ec5b30200da9649c"
  version "1.2.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



