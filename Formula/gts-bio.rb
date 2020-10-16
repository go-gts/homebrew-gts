# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: Genome Transformation Subprograms"
  homepage "https://github.com/go-gts/gts"
  version "0.26.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.26.0/gts_0.26.0_Darwin_x86_64.tar.gz"
    sha256 "97e2194f8d9bb7e4ce59051ccbb4083330354721a585d65a8a5049bd55e1a61e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.26.0/gts_0.26.0_Linux_x86_64.tar.gz"
      sha256 "b9b869b51a56155d04a4c548bf9c03e1a4a7f393578c633bd452955691675925"
    end
  end

  def install
    bin.install "gts"
    bin.install "togo"
    man1.install Dir["man/gts*.1"]
    man7.install Dir["man/gts*.7"]
    bash_completion.install "completion/gts-completion.bash"
    zsh_completion.install "completion/gts-completion.zsh" => "_gts"
  end

  test do
    system "#{bin}/gts --version"
  end
end
