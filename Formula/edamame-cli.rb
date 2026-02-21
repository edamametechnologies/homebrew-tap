class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.8/edamame_cli-1.0.8-universal-apple-darwin"
  sha256 "f69a0123f50432fd1bc8eb0c027199454c34dd7d792ea62df0980da2c55d794c"
  version "1.0.8"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



