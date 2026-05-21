class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.13/edamame_cli-1.3.13-universal-apple-darwin"
  sha256 "a43eade9136b709ba1b78e98ca51c49f108cd21aa73642af45f8c4cafbbac85a"
  version "1.3.13"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



