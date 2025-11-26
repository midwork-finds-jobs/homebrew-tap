class Hrobot < Formula
  desc "Terraform provider for Hetzner Robot API"
  homepage "https://github.com/midwork-finds-jobs/terraform-provider-hrobot"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.2.0/terraform-provider-hrobot_0.2.0_darwin_arm64.zip"
      sha256 "d43fd9e1e075fd631cabefe6e99ac56b533d8d356087daaeb649de84893b7cff"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.2.0/terraform-provider-hrobot_0.2.0_darwin_amd64.zip"
      sha256 "92ff53e6849a2d695fdbdd062765eccb0bf15b2a12a268f46f496f1c7fabf234"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.2.0/terraform-provider-hrobot_0.2.0_linux_arm64.zip"
      sha256 "4921036ce09c4636cc81be04932ea297aa37d57a496aba969b870e62fd2a6952"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.2.0/terraform-provider-hrobot_0.2.0_linux_amd64.zip"
      sha256 "1bc56cb295e76d2a64f78c1a9cb55a3884e16c6b36903db7e7c5b880afab9a5b"
    end
  end

  def install
    bin.install "terraform-provider-hrobot_v#{version}"
  end

  test do
    system "#{bin}/terraform-provider-hrobot_v#{version}", "--version"
  end
end
