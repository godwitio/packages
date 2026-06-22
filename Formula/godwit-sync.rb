# typed: false
# frozen_string_literal: true

class GodwitSync < Formula
  desc "Plan-first S3 object storage migration and sync CLI"
  homepage "https://godwit.io"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.4.1/godwit-sync_0.4.1_darwin_arm64.tar.gz"
      sha256 "77bccc0ca1e17a13ba3849fe6bcdc75257137a5e6656e0872a6647c61cd9daac"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.4.1/godwit-sync_0.4.1_darwin_amd64.tar.gz"
      sha256 "8b1a6af8b7ffa7b88429d800a9641cab708a4ab21bc3eedbb9419994ea980940"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.4.1/godwit-sync_0.4.1_linux_arm64.tar.gz"
      sha256 "46737472192ecdc6ff79b791e6dfb7c94a8ac31736292ad3708f34341badd010"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.4.1/godwit-sync_0.4.1_linux_amd64.tar.gz"
      sha256 "8c29e82484e0a2c6cde8c49fe43c22d5680c091b852d84cfe4a4109fa9c3baf5"
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
