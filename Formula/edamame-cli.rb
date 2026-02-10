class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.3/edamame_cli-1.0.3-universal-apple-darwin"
  sha256 "d626abac8f611a36524db6933755f265bccb86440c58d0675d5bc4f2d6c6da43"
  version "1.0.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



