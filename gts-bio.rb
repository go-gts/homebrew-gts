# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: the Genomics Tools Suite"
  homepage "https://github.com/go-gts/gts"
  version "0.10.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.10.0/gts_0.10.0_Darwin_x86_64.tar.gz"
    sha256 "78b6e1c05ab29790885703549a271fb87fce834cd46da4745eed0d43839674e0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.10.0/gts_0.10.0_Linux_x86_64.tar.gz"
      sha256 "dda97aa70a3270305e9df92cee385e6f472f67943ef8f394370d9cc3278df1f0"
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
