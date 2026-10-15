class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v1.6.0/everett-aarch64-apple-darwin.tar.gz"
      sha256 "42a6839d8c5a05f794807936969b8e44da0f2b096a6905d5e93635cf6a205db2"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v1.6.0/everett-x86_64-apple-darwin.tar.gz"
      sha256 "0179c5f207bf37a85ac35db9899aad15328cae2e24513ad09e8f6405d26e162b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v1.6.0/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a37860e2da852210a48bf883614f6e21346b4cbdf1703d8dbb8d24e7b6cd02b0"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v1.6.0/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65a929c1f8ed71ee22cfd7f173f14fb91592e45550d91d2b1dfefd43ea1d57a6"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
