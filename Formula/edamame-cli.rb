class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.86/edamame_cli-0.9.86-universal-apple-darwin"
  sha256 "6754578be0bf9f662144eb46eb5cd8e256e985ce47d393f4a28601e4d934883e"
  version "0.9.86"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



