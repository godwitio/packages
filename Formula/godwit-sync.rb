# typed: false
# frozen_string_literal: true

class GodwitSync < Formula
  desc "Plan-first S3 object storage migration and sync CLI"
  homepage "https://godwit.io"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.3.2/godwit-sync_0.3.2_darwin_arm64.tar.gz"
      sha256 "fb2aa0d09c55d4525115a034944dfd8ff91e5b78849bf360280e942eba141d0f"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.3.2/godwit-sync_0.3.2_darwin_amd64.tar.gz"
      sha256 "78d6b8c7513cb46383b97576c779d310a5e0ebb8149ae99a6ca236727966a7de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.3.2/godwit-sync_0.3.2_linux_arm64.tar.gz"
      sha256 "98207309e7c376020d85ee8c9e98b483f8f5a55665d66f01426ac7df94b1c4b4"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.3.2/godwit-sync_0.3.2_linux_amd64.tar.gz"
      sha256 "ed75f1c8c9f379517832aaebe20ebe332f985d891b577d60463dacb7c629d223"
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
