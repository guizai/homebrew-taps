class Ossutil < Formula
    desc "A user friendly command line tool to access AliCloud OSS."
    homepage "https://github.com/aliyun/ossutil"
    version "1.7.1"
    url "https://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
    sha256 "cdab34aa7e46fe4f4398e7abac1efb24ce44876af4bb9d240cf1caebff05062c"

    def install
        bin.install "ossutilmac64" => "ossutil"
    end

    test do
        assert_match "ossutil version: v#{version}", shell_output("#{bin}/ossutil --version")
    end
  end
