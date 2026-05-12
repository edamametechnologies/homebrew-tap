class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.6/edamame_cli-1.3.6-universal-apple-darwin"
  sha256 "23e40b7ee4f70ce985f46fbf96cd83d48388db47ede88677be6b321120a7d621"
  version "1.3.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



