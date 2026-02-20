class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.6/edamame_cli-1.0.6-universal-apple-darwin"
  sha256 "151d1f5d65604e4bf6bf9a6b1cbc58df49e6f20b6df4d8aa7204dadc770c5ecc"
  version "1.0.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



