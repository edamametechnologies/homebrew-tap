class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.22/edamame_cli-1.3.22-universal-apple-darwin"
  sha256 "157f96d2da25338049013a1602102653d9f2b4c033ec490df8ad848dc67b8ce3"
  version "1.3.22"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



