# Generated by https://github.com/buildkite/cli/blob/master/.github/tap-release.yml

class Bk < Formula
  homepage "https://github.com/buildkite/cli"
  desc "A command line interface for Buildkite."
  url "https://github.com/buildkite/cli/releases/download/v0.3.0/bk-darwin-amd64-0.3.0"
  version "v0.3.0"
  sha256 "8cd4bbeadfa22a147bfbc4b1f34b24e60f9bc8eb8a036409bed53110ee7be0b2"

  def install
    mv "bk-darwin-amd64-0.3.0", "bk"
    bin.install "bk"
  end

  test do
    assert_match "bk #{version}", shell_output("#{bin}/bk --version 2>&1")
  end
end
