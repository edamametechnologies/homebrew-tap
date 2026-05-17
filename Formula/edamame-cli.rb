class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.10/edamame_cli-1.3.10-universal-apple-darwin"
  sha256 "fc6aaa646466ac05a452350504881d98dc655af79294c6e5c9936e8d12b122c6"
  version "1.3.10"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



