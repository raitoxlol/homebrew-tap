class Everett < Formula
  include Language::Python::Virtualenv

  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  url "https://github.com/raitoxlol/everett/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9415fd959715b471f4e5e3cab75355fb01eecc227c7ad8855ea4da66e2272644"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
