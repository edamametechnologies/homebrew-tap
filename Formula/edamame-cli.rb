class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.17/edamame_cli-1.3.17-universal-apple-darwin"
  sha256 "62d641fb5ad1b28fc802bbd456b9084154f7c0adc1238c02b6c7980aa0f0dd38"
  version "1.3.17"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



