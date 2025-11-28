class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.82/edamame_cli-0.9.82-universal-apple-darwin"
  sha256 "1a8a90901e3212dcd75ebf3899a710cc543bd00a59371a0186177a366831a635"
  version "0.9.82"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



