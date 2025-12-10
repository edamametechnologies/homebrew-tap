class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.83/edamame_cli-0.9.83-universal-apple-darwin"
  sha256 "9e7b70adc1f6f3e82075f2cd31e26a2720b5020d7ef3cd90a42cbd5379db0c11"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



