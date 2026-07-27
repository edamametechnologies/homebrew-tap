class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.7.0/edamame_cli-1.7.0-universal-apple-darwin"
  sha256 "6b93163f70e7c242aa72cf1a6c25602eb7d756e0c9aadceac331364e45497d37"
  version "1.7.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



