# This file was generated by GoReleaser. DO NOT EDIT.
class GtsBio < Formula
  desc "GTS: Genome Transformation Subprograms"
  homepage "https://github.com/go-gts/gts"
  version "0.26.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/go-gts/gts/releases/download/v0.26.6/gts_0.26.6_Darwin_x86_64.tar.gz"
    sha256 "c786d7b63435e23c67c3da656f4caa807bfad1e52baef18a5667f995b3709b5b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/go-gts/gts/releases/download/v0.26.6/gts_0.26.6_Linux_x86_64.tar.gz"
      sha256 "0038ad52dba25c1a84acb366392f16724120628fcc323bb033a9203a274b7423"
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
