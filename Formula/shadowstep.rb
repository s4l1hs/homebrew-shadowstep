class Shadowstep < Formula
  include Language::Python::Virtualenv

  desc "Advanced system artifact & metadata management suite"
  homepage "https://github.com/s4l1hs/ShadowStep"
  url "https://github.com/s4l1hs/ShadowStep/archive/refs/heads/main.tar.gz"
  sha256 "ef5c0dc621cea8b7c2e359c44c7f90cb7c2d9d8c951e6b04e4a6a9227db256b5"
  version "1.0.1"
  license "MIT"

  depends_on "python@3.11"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/source/p/pyyaml/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/source/c/colorama/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "setproctitle" do
    url "https://files.pythonhosted.org/packages/source/s/setproctitle/setproctitle-1.3.7.tar.gz"
    sha256 "bc2bc917691c1537d5b9bca1468437176809c7e11e5694ca79a9ca12345dcb9e"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/source/p/psutil/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/shadowstep", "--help"
  end
end
