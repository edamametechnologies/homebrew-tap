class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.1.0/edamame_cli-2.1.0-universal-apple-darwin"
  sha256 "42a668f7204c7997362153429c9c4e637b9c26ef9c3e4e5e568b5db4e7bd340d"
  version "2.1.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



