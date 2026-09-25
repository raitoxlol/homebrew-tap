class Everett < Formula
  include Language::Python::Virtualenv

  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  url "https://github.com/raitoxlol/everett/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "2b18def24bbaea5a4c623604803216b4b31815d022fa65b30d8a8cfb1d70233c"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
