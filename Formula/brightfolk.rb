class Brightfolk < Formula
  desc "Make the MacBook Pro XDR display brighter than macOS normally allows"
  homepage "https://github.com/Techfolk-AS/homebrew-tap"
  url "https://raw.githubusercontent.com/Techfolk-AS/homebrew-tap/brightfolk-3/binaries/brightfolk"
  version "3"
  sha256 "5d6ed16f4ce9108689614dc00eea6b02c54a99b4e1a467672d1141fcdf492a71"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "brightfolk"
  end
end
