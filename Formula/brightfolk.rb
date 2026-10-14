class Brightfolk < Formula
  desc "Make the MacBook Pro XDR display brighter than macOS normally allows"
  homepage "https://github.com/Techfolk-AS/homebrew-tap"
  url "https://raw.githubusercontent.com/Techfolk-AS/homebrew-tap/brightfolk-2/binaries/brightfolk"
  version "2"
  sha256 "0383073123fc3a9865432e3c07b3f324649c2653bcd11498d063ce0f5d5a3e03"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "brightfolk"
  end
end
