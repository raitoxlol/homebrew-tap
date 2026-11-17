class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.1/everett-aarch64-apple-darwin.tar.gz"
      sha256 "d8d10cfe8463aeda3069ff0e024066345254027fa65a489ae47230330ded68f6"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.1/everett-x86_64-apple-darwin.tar.gz"
      sha256 "7d9b3f8fc4fb29ca53a9022bfb4ba773d7e922900474d141e70aaa23e9436e17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.1/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c3e1bdb4e405b56b4557bea50c9360d6b5899ab40dfc0e6beb4ef44a7c2da08"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.1/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99a4333193969320c37b9ead7a4403d37a5c7bfa9247d3671f34534af10de2c7"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
