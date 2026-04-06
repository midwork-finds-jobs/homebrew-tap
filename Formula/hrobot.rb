class Hrobot < Formula
  desc "CLI for Hetzner Robot API - manage dedicated servers, firewall, SSH keys"
  homepage "https://github.com/midwork-finds-jobs/terraform-provider-hrobot"
  version "0.6.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.6.0/hrobot-darwin-arm64.tar.gz"
      sha256 "0139f61f726308e3247976b720ab65ccb60d92de84bdd3e926b3db42951a95b7"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.6.0/hrobot-darwin-amd64.tar.gz"
      sha256 "3617de07ff13736a83384c91d98fbcc8eb7e5eff382302608c5c845cadb4f0ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.6.0/hrobot-linux-arm64.tar.gz"
      sha256 "07179e3241512c019d15d31e275f2a3e2a5b44e3945781ab722187be59857a7c"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.6.0/hrobot-linux-amd64.tar.gz"
      sha256 "0b5cb2da2bd71631d9dc42c2a89b846777e86447959d9103ae8ddf741d4fb4ff"
    end
  end

  def install
    bin.install "hrobot"
  end

  test do
    system "#{bin}/hrobot", "--version"
  end
end
