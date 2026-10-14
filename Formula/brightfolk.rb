class Brightfolk < Formula
  desc "Make the MacBook Pro XDR display brighter than macOS normally allows"
  homepage "https://github.com/Techfolk-AS/brightfolk"
  url "https://github.com/Techfolk-AS/brightfolk.git", tag: "build-2", revision: "6ab4ca26b512dbc3286221768de1627091ffff0f"
  version "2"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/brightfolk"
  end
end
