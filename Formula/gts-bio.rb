class GtsBio < Formula
  desc "GTS: The Genomics Tool suite"
  homepage "https://github.com/go-gts/gts"
  url "https://github.com/go-gts/gts/archive/v0.9.4.tar.gz"
  sha256 "16df8207b9708cf4f11dc150c930843c7676ce9a6d0f428050107371db77f8cc"

  bottle do
    root_url "https://dl.bintray.com/go-gts/bottles-gts"
    cellar :any_skip_relocation
    sha256 "2f841ce4add6c057b8827a38244c5b7faec418e2690f6cbac187f2d105fa0299" => :catalina
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
