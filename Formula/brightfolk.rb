# brightfolk is private, so the release asset needs a GitHub token.
# GitHub::API.credentials reads HOMEBREW_GITHUB_API_TOKEN, then `gh auth token`.
class GitHubPrivateReleaseDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    meta[:headers] = [
      "Accept: application/octet-stream",
      "Authorization: token #{GitHub::API.credentials}",
    ]
    super
  end
end

class Brightfolk < Formula
  desc "Make the MacBook Pro XDR display brighter than macOS normally allows"
  homepage "https://github.com/Techfolk-AS/brightfolk"
  url "https://api.github.com/repos/Techfolk-AS/brightfolk/releases/assets/639602434",
      using: GitHubPrivateReleaseDownloadStrategy
  version "2"
  sha256 "0383073123fc3a9865432e3c07b3f324649c2653bcd11498d063ce0f5d5a3e03"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install Dir["*"].first => "brightfolk"
  end
end
