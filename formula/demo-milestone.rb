require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.0-rc1-SNAPSHOT/enhanced-mule-tools-cli-@version@-dist.tbz2"
  sha256 "9d639c12c2b6caf01cd5ff994de6d352e6cd0b3d1c99168c068741bad8a87295  target/dodelme-1.0-rc1-SNAPSHOT-dist.tbz2"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/dodel"
  end
    test do
      assert_match "1.0-rc1-SNAPSHOT", shell_output("#{bin}/dodel -V", 2)
    end
end
