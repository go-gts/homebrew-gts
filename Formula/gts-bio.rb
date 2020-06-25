# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: the Genomics Tools Suite"
  homepage "https://github.com/go-gts/gts"
  version "0.11.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.11.0/gts_0.11.0_Darwin_x86_64.tar.gz"
    sha256 "69ca3fac91b8683b2e2e4c55b7320ee558bf50d7ec9387173bc767756cd2615b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.11.0/gts_0.11.0_Linux_x86_64.tar.gz"
      sha256 "b443a748efc76a8b69cc3512677fde8f503874f399b24377836b6f80cac14eb8"
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
