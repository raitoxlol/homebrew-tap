class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.4.0/everett-aarch64-apple-darwin.tar.gz"
      sha256 "eb056e41839ff531250d074406e65da3db8a4a5bd17c067c7ede33e42f9481b5"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.4.0/everett-x86_64-apple-darwin.tar.gz"
      sha256 "9facf663e3c4f59a5e2303d68bd5104fe9da5126e8e2a1d7217bc8b6503d2a6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v2.4.0/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5f0ccdd1cf8c7c76d2eedd3805fc85a869c808730f93a902771d984570db6635"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v2.4.0/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfbeb7fa47054b69327c2d9a8c64d91c8ae9536c5df1edc53aaed3ae6cb09ca3"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
