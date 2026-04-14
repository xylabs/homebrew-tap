class Xy < Formula
  desc "Unified TypeScript toolchain for XY Labs - build, lint, test, deploy"
  homepage "https://github.com/xylabs/config"
  url "https://registry.npmjs.org/@xylabs/toolchain/-/toolchain-7.10.4.tgz"
  sha256 "1a7d1df2d7c746b82ce3f2dea6ce8916926bcab9d492c0c178d6b038f69c621d"
  license "LGPL-3.0-only"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/xy"]
  end

  test do
    output = shell_output("#{bin}/xy --version")
    assert_match version.to_s, output
  end
end
