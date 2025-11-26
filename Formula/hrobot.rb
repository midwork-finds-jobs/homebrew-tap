class Hrobot < Formula
  desc "Terraform provider for Hetzner Robot API"
  homepage "https://github.com/midwork-finds-jobs/terraform-provider-hrobot"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.3.1/hrobot-darwin-arm64.tar.gz"
      sha256 "b96e2d6f278a2ec86aca46f1526f1c32a9232784a96cfcaebfd1fa8b14812964"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.3.1/hrobot-darwin-amd64.tar.gz"
      sha256 "ea14e4d0ed21732041f7fa2c1db337e276541793602f6110c3643760539e4ede"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.3.1/hrobot-linux-arm64.tar.gz"
      sha256 "df879d4b6870131dd25d3dc3bb85508ddd9a238e0b467d4b87ee9e6b8bc450ed"
    else
      url "https://github.com/midwork-finds-jobs/terraform-provider-hrobot/releases/download/v0.3.1/hrobot-linux-amd64.tar.gz"
      sha256 "2740dec91435bbe51bff66452e26837e4d2688b107d5c442d5ea646e192919e5"
    end
  end

  def install
    bin.install "hrobot"
  end

  test do
    system "#{bin}/hrobot", "--version"
  end
end
