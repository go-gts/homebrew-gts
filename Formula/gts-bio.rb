# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: the Genomics Tools Suite"
  homepage "https://github.com/go-gts/gts"
  version "0.19.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.19.0/gts_0.19.0_Darwin_x86_64.tar.gz"
    sha256 "4c3cd9faae1085716b6c6dbd3f3bfcac31d360b076916d34fa734395a263df91"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.19.0/gts_0.19.0_Linux_x86_64.tar.gz"
      sha256 "5b2f31fb7492ee328602f3f3d2fb499fe625d19f48a0492490fa88aebb1f1e85"
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
