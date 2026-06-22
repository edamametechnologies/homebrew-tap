class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.3/edamame_cli-1.4.3-universal-apple-darwin"
  sha256 "777105938ed289b2ad56c0d118c5573686b4a7ce6e8cbb3e4aac062c467aa47f"
  version "1.4.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



