class GtsBio < Formula
  desc "GTS: The Genomics Tool suite"
  homepage "https://github.com/go-gts/gts"
  url "https://github.com/go-gts/gts/archive/v0.9.2.tar.gz"
  sha256 "47c6236087357465ebd34d732dee543586cc52708baea84585f1a1739c0ba846"

  bottle do
    root_url "https://dl.bintray.com/go-gts/bottles-gts"
    cellar :any_skip_relocation
    rebuild 1
    sha256 "bd4f3d0dc3f3a5eb9533f8ad6643e858049063906ba5ef3cf2990b497cc24ac8" => :catalina
    sha256 "7c229e9af7b00d32896e4a1afdeb89bb564cb74a9116d81c514cc47f033deb91" => :x86_64_linux
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
