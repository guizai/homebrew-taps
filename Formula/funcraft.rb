class Funcraft < Formula
    desc "AliCloud (have) Fun with Serverless(API Gateway & Function Compute)"
    homepage "https://github.com/alibaba/funcraft"
    version "3.6.13"
    url "https://gosspublic.alicdn.com/fun/fun-v#{version}-macos.zip"
    sha256 "d53b653b99b746076e6018a006e3f267648e223cd139883ef42f215399d7a025"

    def install
        bin.install "fun-v#{version}-macos" => "fun"
    end

    test do
        assert_match "#{version}", shell_output("#{bin}/fun --version")
    end
  end
