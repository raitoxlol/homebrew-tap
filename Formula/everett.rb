class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.1/everett-aarch64-apple-darwin.tar.gz"
      sha256 "5989c03f86546517411b17ec33607ac8f17a386af86bafb2f0569e60f7084d57"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.1/everett-x86_64-apple-darwin.tar.gz"
      sha256 "b705ab0722e5636eb3bc023dfe76e9fd0376c8a39196215482bd5c1a8b335440"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.1/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "609a79c4a76281b780a5b159d53b615eb1a9c383202c7a7c456e42c7f68ccd4c"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.2.1/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42459b46fd2493c8d094b3687659d165e9d2dca48609dc510bebf0f18fd810f8"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
