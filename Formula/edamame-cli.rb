class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.8.1/edamame_cli-1.8.1-universal-apple-darwin"
  sha256 "950314ce872b67c61ffd299dc83e818977d4dd6326f1080e6b2c394ce3f56276"
  version "1.8.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



