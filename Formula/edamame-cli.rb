class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.24/edamame_cli-1.3.24-universal-apple-darwin"
  sha256 "e082c38ed59504610b008d89b92343bbd7f488a57ce0414db2d9cfc7b52af4ed"
  version "1.3.24"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



