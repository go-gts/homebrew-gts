class GtsBio < Formula
  desc "GTS: The Genomics Tool suite"
  homepage "https://github.com/go-gts/gts"
  url "https://github.com/go-gts/gts/archive/v0.9.2.tar.gz"
  sha256 "47c6236087357465ebd34d732dee543586cc52708baea84585f1a1739c0ba846"

  bottle do
    root_url "https://dl.bintray.com/go-gts/bottles-gts"
    cellar :any_skip_relocation
    sha256 "91319da51174f349d2347af248c43471b335217e3abed820482a711c5f79e88f" => :catalina
  end

  depends_on "go" => :build

  def install
    system "go", "build", "./cmd/gts"
    bin.install "gts"
    system "go", "build", "./cmd/togo"
    bin.install "togo"
  end

  test do
    system "#{bin}/gts --version"
  end
end
