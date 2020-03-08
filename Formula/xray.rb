class Xray < Formula
    desc "一款完善的安全评估工具，支持常见 web 安全问题扫描和自定义 poc"
    homepage "https://xray.cool"
    version "0.19.4"
    url "https://github.com/chaitin/xray/releases/download/#{version}/xray_darwin_amd64.zip"
    sha256 "7b4ee8a47aa9286636d7a8db2d676e63733963ebcf1ae4697a1a3413c44cbe69"
    # head "https://github.com/chaitin/xray.git"

    # if OS.linux?
    #     if Hardware::CPU.is_64_bit?
    #         url "https://github.com/chaitin/xray/releases/download/#{version}/xray_linux_amd64.zip"
    #         sha256 "569217ba7123d41fc93326c70de98377db162d57e7151d1fd4add80fe255dfdc"
    #     elsif Hardware::CPU.is_32_bit?
    #         url "https://github.com/chaitin/xray/releases/download/#{version}/xray_linux_386.zip"
    #         sha256 "89a03f9766a6668c6f66b06dea64295e65324adca352d3bdf53566bd97f94a34"
    #     end
    # end

    def install
        bin.install "xray_darwin_amd64" => "xray"
    end

    test do
        assert_match "Version: #{version}/", shell_output("#{bin}/xray version")
    end
end
