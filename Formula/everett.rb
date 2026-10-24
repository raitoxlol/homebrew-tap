class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.1.0/everett-aarch64-apple-darwin.tar.gz"
      sha256 "45eb0a140ae2c138d6e0e43be25d5a32e036b3a2dee46acd2e089dcc076f5c65"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.1.0/everett-x86_64-apple-darwin.tar.gz"
      sha256 "e55d3f083e6d877d0ca9a8607516355faaefdd9af72945f18df96aec990642fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.1.0/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5824cbde5e3fe4fc323557e22a8d294f8d7cb8162612a5b39a7a78c17c5b063e"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.1.0/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "436f86407fd595ff147506a851036583da9f28ce96e36b84563b008675af2985"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
