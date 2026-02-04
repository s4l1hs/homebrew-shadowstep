class Shadowstep < Formula
  include Language::Python::Virtualenv

  desc "Advanced system artifact & metadata management suite"
  homepage "https://github.com/s4l1hs/ShadowStep"
  url "https://files.pythonhosted.org/packages/source/s/shadowstep/shadowstep-1.0.1.tar.gz"
  sha256 "01b70ea48efed3b5ca454959052973c6c74d3c2d3dddf0733f71bb660975c060"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_create(libexec, "python3.11")
    system libexec/"bin/pip", "install", "-v", "--ignore-installed", buildpath
    bin.install_symlink libexec/"bin/shadowstep"
  end

  test do
    system "#{bin}/shadowstep", "--help"
  end
end
