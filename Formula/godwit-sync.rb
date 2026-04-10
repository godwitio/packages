# typed: false
# frozen_string_literal: true

class GodwitSync < Formula
  desc "Plan-first S3 object storage migration and sync CLI"
  homepage "https://godwit.io"
  version "0.2.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.2.4/godwit-sync_0.2.4_darwin_arm64.tar.gz"
      sha256 "792d31c3201c9ebb3c9a620b3ee05ad153d30ade2256fffe0c26d1997026a859"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.2.4/godwit-sync_0.2.4_darwin_amd64.tar.gz"
      sha256 "dd72a964830ab2bd042011b1f72c6b69ef51f5479629a63bfffbd72ecd196378"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.godwit.io/godwit-sync/v0.2.4/godwit-sync_0.2.4_linux_arm64.tar.gz"
      sha256 "1af01473a9acb37d04080eed07dc44e93fec7d7e9c217c6480f124de08f65b4f"
    else
      url "https://downloads.godwit.io/godwit-sync/v0.2.4/godwit-sync_0.2.4_linux_amd64.tar.gz"
      sha256 "e78261cdd30d1ceed5cd54ad9fd8c6ddb64ca3cf43f97dc56d770a2ff847b3c9"
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
