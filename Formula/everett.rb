class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.0.0/everett-aarch64-apple-darwin.tar.gz"
      sha256 "59f7dbf89d6ef6d5665e1ca154f096e8b0db9ca144e8242e6e8f432f6778b874"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.0.0/everett-x86_64-apple-darwin.tar.gz"
      sha256 "3cf9ba3f318f9bb615ad1dfb49e2c22c772c40c1fd9ad9ba40f4a26acf327c61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.0.0/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aec6c3448ff341bf7937b0a23755cadfaebc0c974e08286103f36c2235873628"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.0.0/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1217f3cf0e194291e644a48941c894e14a14195bf7411429b0fe208f6d20df77"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
