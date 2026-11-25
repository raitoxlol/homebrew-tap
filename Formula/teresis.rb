class Teresis < Formula
  desc "Local, zero-dependency long-term memory for AI agents"
  homepage "https://www.raitox.tech/teresis"
  url "https://github.com/raitoxlol/teresis/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0220c6ca7ba1da3375306748e3a76e7c636866eabb59135f230d62d00e47d8a4"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    libexec.install "src/teresis"
    (bin/"teresis").write <<~SH
      #!/bin/bash
      export PYTHONPATH="#{libexec}${PYTHONPATH:+:$PYTHONPATH}"
      exec "#{Formula["python@3.12"].opt_bin}/python3.12" -m teresis "$@"
    SH
  end

  test do
    assert_match "teresis #{version}", shell_output("#{bin}/teresis --version")
    out = shell_output("#{bin}/teresis stats --db #{testpath}/test.db --json")
    assert_match '"active": 0', out
  end
end
