# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Parcly < Formula
  desc "Parcly is a CLI app for tracking parcels."
  homepage ""
  version "1.0.18"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/niklasschloegel/parcly/releases/download/v1.0.18/parcly_1.0.18_macOS_64bit.tar.gz"
    sha256 "c45c65ed030ce2cb6bda3340bc8b5b41e88573fec9af10ca3565bce9add2618a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/niklasschloegel/parcly/releases/download/v1.0.18/parcly_1.0.18_Linux_64bit.tar.gz"
    sha256 "84faa66aae7efe5537210a4f1d4273ac45715516a1965c67149015766457d1e4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/niklasschloegel/parcly/releases/download/v1.0.18/parcly_1.0.18_Linux_ARMv6.tar.gz"
    sha256 "3248a5aff46dab5f56cc0bfe35383a963aaf9ab5dc69b36b638b20abdca764b8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/niklasschloegel/parcly/releases/download/v1.0.18/parcly_1.0.18_Linux_ARM64.tar.gz"
    sha256 "c10085d5c3e3caa50109a307008e6df75f7cc38e09ce06933091ec3504e33ad1"
  end

  depends_on "git"
  depends_on "go"

  def install
    bin.install "parcly"
  end
end
