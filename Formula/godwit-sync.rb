# typed: false
# frozen_string_literal: true

class GodwitSync < Formula
  desc "Plan-first S3 object storage migration and sync CLI"
  homepage "https://godwit.io"
  version "0.3.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.3.3/godwit-sync_0.3.3_darwin_arm64.tar.gz"
      sha256 "cc8ea2f74e237ede3cc5923be017673fd2729915a5a14a88b80a3c95f89b6766"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.3.3/godwit-sync_0.3.3_darwin_amd64.tar.gz"
      sha256 "3af3404e49e9ebc0704f8b9992d3498c60e9ee6646fae5de64c01ca5908b46f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.3.3/godwit-sync_0.3.3_linux_arm64.tar.gz"
      sha256 "e9648d32729fc2f9a622fb6275e5109d9b41c1e366b144ccdf875ce787435376"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.3.3/godwit-sync_0.3.3_linux_amd64.tar.gz"
      sha256 "97f3b759d3a21999eff9959be538ba6955daa0845ea0060c32b3cff62f2c217c"
    end
  end

  def install
    bin.install "godwit"
  end

  def caveats
    <<~EOS
      Godwit Sync is commercial software.
      A permanent free tier (10 GB per run) is included with no registration.
      Register at https://godwit.io for a 30-day trial (50 GB) — no credit card required.
      Paid plans start at EUR 15/month. See https://godwit.io/pricing
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/godwit --version")
  end
end
