class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.4/edamame_cli-2.0.4-universal-apple-darwin"
  sha256 "abdd1d546095629de9333ca197db141b9a68c103fefcbdbc536da895e2920eb3"
  version "2.0.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



