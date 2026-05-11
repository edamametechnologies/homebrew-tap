class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.5/edamame_cli-1.3.5-universal-apple-darwin"
  sha256 "a474c0642a93d85768ede212d28a9a989fd242b09029fda9e19c5c9a40ad0d24"
  version "1.3.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



