class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.0/everett-aarch64-apple-darwin.tar.gz"
      sha256 "847e20aa25d29e2aed96b9443df3b443ba82ef3a776c4abd10f0d587c202a0d0"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.0/everett-x86_64-apple-darwin.tar.gz"
      sha256 "32b7a574efc71b180f8740b100bab7988511a7980b40e82b9dfffdabc19a5b92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.0/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec0d0a33b5742b3141286240175c1905f736ec00f12bc7c53daffd3fcd47f259"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.0/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38881dd4e060648a6d335db8d2cf1d80b021ce4594d9eddf058a5030bd2d06b2"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
