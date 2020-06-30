# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: the Genomics Tools Suite"
  homepage "https://github.com/go-gts/gts"
  version "0.11.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.11.2/gts_0.11.2_Darwin_x86_64.tar.gz"
    sha256 "e640092fb71c4930369eb7285101ef90415b78f4d392848cfde6dfc1798dcc45"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.11.2/gts_0.11.2_Linux_x86_64.tar.gz"
      sha256 "3e35a2a5a4053f34f5f26394b33349e2e393a35cb02441e8a569f67f283c0006"
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
