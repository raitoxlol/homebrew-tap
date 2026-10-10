class Everett < Formula
  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v1.5.0/everett-aarch64-apple-darwin.tar.gz"
      sha256 "9b93c7c07361a3c70b3061fb6e6e112bd37b3a3901b9a69a66eff146a2f41dd4"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v1.5.0/everett-x86_64-apple-darwin.tar.gz"
      sha256 "64f1d61455fe2f35d9767dedc8b4e843afcbeacee54d0f377e12caf03ecdbd94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/raitoxlol/everett/releases/download/v1.5.0/everett-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7cd2e5604366c0989ad817033f0f2e3a25e12c6034e874317ef82a5f68e84e3b"
    end
    on_intel do
      url "https://github.com/raitoxlol/everett/releases/download/v1.5.0/everett-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80e42c91f274ea16b91dccf21af489f9fcd3dd1796f81ee898dbad87cf10d255"
    end
  end

  def install
    bin.install "everett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
