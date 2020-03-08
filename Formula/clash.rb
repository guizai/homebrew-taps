class Clash < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "0.18.0"
    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-darwin-amd64-v#{version}.gz"
    sha256 "e35f33f46fe8f456e6cb7146216d6e8790b7a6d3188252619a4c286a5bd4dd94"
    # head "https://github.com/Dreamacro/clash.git"

    def install
        bin.install "clash-darwin-amd64" => "clash"
    end

    test do
        assert_match "Clash v#{version} ", shell_output("#{bin}/clash -v")
    end
  end
