class Ossutil < Formula
    desc "A user friendly command line tool to access AliCloud OSS."
    homepage "https://github.com/aliyun/ossutil"
    version "1.6.13"
    url "https://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
    sha256 "c3fbf9392a9af823d52b874e53c521fd99fabfccdd290b8ef677f7acac4cff57"

    def install
        bin.install "ossutilmac64" => "ossutil"
    end

    test do
        assert_match "ossutil version: v#{version}", shell_output("#{bin}/ossutil --version")
    end
  end
