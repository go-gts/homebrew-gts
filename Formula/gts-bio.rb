# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: the Genomics Tools Suite"
  homepage "https://github.com/go-gts/gts"
  version "0.11.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.11.4/gts_0.11.4_Darwin_x86_64.tar.gz"
    sha256 "a2823141b56d1b30fd4b39f05ca6e2a62edae9ee39f0fd043ee85543249af5da"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.11.4/gts_0.11.4_Linux_x86_64.tar.gz"
      sha256 "96c92d2d6b12ea7ae2bcb4de46221c1559704c2d0cd3d8b91c1f7cb5416d7ec6"
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
