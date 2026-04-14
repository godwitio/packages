# typed: false
# frozen_string_literal: true

class GodwitSync < Formula
  desc "Plan-first S3 object storage migration and sync CLI"
  homepage "https://godwit.io"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.3.1/godwit-sync_0.3.1_darwin_arm64.tar.gz"
      sha256 "54d48b808dfe68174c67f5e32891882096d7596f52f7b974149fcefacabcd527"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.3.1/godwit-sync_0.3.1_darwin_amd64.tar.gz"
      sha256 "406687f97a62e9fdf6dba6ec7835c6eb3abb888b8683b6810fed17ec90dbbf2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.3.1/godwit-sync_0.3.1_linux_arm64.tar.gz"
      sha256 "9794471ec00b5adfee5721c5a912222f27d93b4fe886392080cef2b1c515a30c"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.3.1/godwit-sync_0.3.1_linux_amd64.tar.gz"
      sha256 "9f382c59093ed503629a9c622d905f901cc8f50c7c8d020c945f1c16a3b4bf59"
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
