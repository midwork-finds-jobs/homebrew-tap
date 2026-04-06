class Hrobot < Formula
  desc "CLI for Hetzner Robot API - manage dedicated servers, firewall, SSH keys"
  homepage "https://github.com/midwork-finds-jobs/terraform-provider-hrobot"
  version "0.5.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.5.0/hrobot-darwin-arm64.tar.gz"
      sha256 "5d6fc9c5db6e73ff583ebf16b96e4fef6eb3509881aeb1a622ac73cbd8c089f5"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.5.0/hrobot-darwin-amd64.tar.gz"
      sha256 "196c5bbb2bb3896dd20f416d95b122a0b3af04586898bc8e72f1ebdc1f1be9ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.5.0/hrobot-linux-arm64.tar.gz"
      sha256 "3afe7e06f38538a6cf2b98ac895a849e3d42a77241b0ce17f6faaa253754e04d"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.5.0/hrobot-linux-amd64.tar.gz"
      sha256 "a9cbaa692ae3b6f12a870af508db9f974590a1a1b30f16204156136936dd6680"
    end
  end

  def install
    bin.install "hrobot"
  end

  test do
    system "#{bin}/hrobot", "--version"
  end
end
