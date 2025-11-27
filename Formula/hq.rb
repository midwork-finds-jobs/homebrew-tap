class Hq < Formula
  desc "Command-line HTML filter using CSS selectors"
  homepage "https://github.com/midwork-finds-jobs/hq"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/hq/releases/download/v0.5.1/hq-macos-aarch64.tar.gz"
      sha256 "10b9e9fa9bc2cff934e1dd0296dfcbb2eb41c0e887e553a26a84e08116d0c032"
    else
      url "https://github.com/midwork-finds-jobs/hq/releases/download/v0.5.1/hq-macos-x86_64.tar.gz"
      sha256 "705552e1c6ebecc7d2c0c6bfee352a8ecd419d946706150ae87c6cb17f507bd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/hq/releases/download/v0.5.1/hq-linux-aarch64.tar.gz"
      sha256 "26e2d758adfbb81496fb941ba218b263e376e0baea82d8c479b35a52ec069120"
    else
      url "https://github.com/midwork-finds-jobs/hq/releases/download/v0.5.1/hq-linux-x86_64.tar.gz"
      sha256 "7f7b40f8ec8ef05ee6548530f411ef791d411ae673c08faed2a296f032368d0e"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "hq-macos-aarch64" => "hq"
      else
        bin.install "hq-macos-x86_64" => "hq"
      end
    else
      if Hardware::CPU.arm?
        bin.install "hq-linux-aarch64" => "hq"
      else
        bin.install "hq-linux-x86_64" => "hq"
      end
    end
  end

  test do
    system "#{bin}/hq", "--version"
  end
end
