class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.0/edamame_cli-1.0.0-universal-apple-darwin"
  sha256 "5eb1247b95c8f390046ff2bec033c03b6d7fba1f4318d67b3f12406277ad4a43"
  version "1.0.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



