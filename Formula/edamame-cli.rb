class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.23/edamame_cli-1.3.23-universal-apple-darwin"
  sha256 "2fafade445c9543601eb7e49cec279fdb47920e77f9b4d3a2e128ab16d71adef"
  version "1.3.23"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



