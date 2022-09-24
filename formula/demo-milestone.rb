require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.0-rc1-SNAPSHOT/enhanced-mule-tools-cli-@version@-dist.tbz2"
  sha256 "f797bd50ed6aa7be042d34acb122cb10ab0f8982c8a38b768ea4493e15685d47"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/dodel"
  end
    test do
      assert_match "1.0-rc1-SNAPSHOT", shell_output("#{bin}/dodel -V", 2)
    end
end
