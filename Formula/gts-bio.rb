# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: the Genomics Tools Suite"
  homepage "https://github.com/go-gts/gts"
  version "0.11.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.11.3/gts_0.11.3_Darwin_x86_64.tar.gz"
    sha256 "eedbe63113ccf800e3436c28fd058cb29539f25384e1d59b2bb336447456ab7c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.11.3/gts_0.11.3_Linux_x86_64.tar.gz"
      sha256 "aadc8c4301d29d5ef77e1e0b5647ac67e41ee9bc3f4786b3dcd739725c317a69"
    end
  end
  
  depends_on "go" => :build

  def install
    bin.install "gts"
    bin.install "togo"
  end

  test do
    system "#{bin}/gts --version"
  end
end
