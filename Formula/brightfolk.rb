class Brightfolk < Formula
  desc "Make the MacBook Pro XDR display brighter than macOS normally allows"
  homepage "https://github.com/Techfolk-AS/homebrew-tap"
  url "https://raw.githubusercontent.com/Techfolk-AS/homebrew-tap/brightfolk-5/binaries/brightfolk"
  version "5"
  sha256 "95234c0b45aba340bca2962669c4e85ef44353731d0aa52ffd0a099e55ea07e8"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "brightfolk"
  end
end
