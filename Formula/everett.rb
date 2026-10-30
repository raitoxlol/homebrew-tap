class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.0/everett-aarch64-apple-darwin.tar.gz"
      sha256 "ed6c8abf44af97ab14790d6a73f69874341d15e7ee8c2c0042e9daa605f5066d"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.0/everett-x86_64-apple-darwin.tar.gz"
      sha256 "2de48a578d3ee7f36dfc3b7307bee7cc12fa6d3869c13284f94960f4ac99308e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.0/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb3b9e88d1d90fd63639d9e2863a58e94bf09e6f26d5a0edb08d650edf461951"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.0/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "19cf01228e3e276d73fa95463247d9437c4fa3498735844b1f12b59e0a16fb23"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
