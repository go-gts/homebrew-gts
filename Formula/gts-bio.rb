class GtsBio < Formula
  desc "GTS: The Genomics Tool suite"
  homepage "https://github.com/go-gts/gts"
  url "https://github.com/go-gts/gts/archive/v0.9.4.tar.gz"
  sha256 "16df8207b9708cf4f11dc150c930843c7676ce9a6d0f428050107371db77f8cc"

  bottle do
    root_url "https://dl.bintray.com/go-gts/bottles-gts"
    cellar :any_skip_relocation
    rebuild 1
    sha256 "82517a8144c0aa8dc99288aea6e0f3806938a6f547af0fcaead0451cfb348922" => :catalina
    sha256 "c995352069eef9a5119fa59449b8712d54c6570ff9a59c84b59a57c2f87b34fa" => :x86_64_linux
  end

  bottle do
    root_url "https://dl.bintray.com/go-gts/bottles-gts"
    cellar :any_skip_relocation
    sha256 "0b68c945c30452387d3158ce84ef5e96a1f160b697aae753091fc757a9c479c5" => :catalina
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
