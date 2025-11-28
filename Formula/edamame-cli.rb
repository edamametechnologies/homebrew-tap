class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.82/edamame_cli-0.9.82-universal-apple-darwin"
  sha256 "cd89e3eb1a90f5e063b84b189a42c0325e003d5e1d5534a057ccc5a224dc334e"
  version "0.9.82"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



