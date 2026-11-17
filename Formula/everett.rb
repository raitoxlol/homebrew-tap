class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.2/everett-aarch64-apple-darwin.tar.gz"
      sha256 "17d7f314a1a96ef553bc54c273a8e613f277603939d9f0286ef997b9bcf86040"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.2/everett-x86_64-apple-darwin.tar.gz"
      sha256 "b8c3ff05b6ae91dadde984c35909462104edd827f200b8d203f780b8e6518e63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.2/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92aca283d27cf543d95287e1950bded0df7b226c888ecac536bffd55ef7d4e20"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.3.2/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a3e8abc24143ff3d262533ffaac60346ed03dc6149bdb6a1382157bfcee5c35"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
