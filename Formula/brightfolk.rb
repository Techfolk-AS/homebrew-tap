class Brightfolk < Formula
  desc "Make the MacBook Pro XDR display brighter than macOS normally allows"
  homepage "https://github.com/Techfolk-AS/homebrew-tap"
  url "https://raw.githubusercontent.com/Techfolk-AS/homebrew-tap/brightfolk-4/binaries/brightfolk"
  version "4"
  sha256 "8b0222c7c93be1b336aee656548c473f6cf020234fe2c633f657d4455194e16b"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "brightfolk"
  end
end
