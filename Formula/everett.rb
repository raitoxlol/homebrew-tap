class Everett < Formula
  include Language::Python::Virtualenv

  desc "Layer above every coding-agent session on your machine"
  homepage "https://github.com/raitoxlol/everett"
  url "https://github.com/raitoxlol/everett/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "758fa258324c06453ca6c432154f13ab2d9fcda42cc48359677a372fd41766ea"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everett --version")
  end
end
