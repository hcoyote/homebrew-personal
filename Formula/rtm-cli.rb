require "language/node"

class RtmCli < Formula
  desc "RTM CLI"
  homepage "https://github.com/dwaring87/rtm-cli#readme"
  url "https://registry.npmjs.org/rtm-cli/-/rtm-cli-1.2.1.tgz"
  version "1.2.1"
  sha256 "237dae10ec936900f892eac9acf76e54607ea1413d2f116fa0c6ca63b6df33c2"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end