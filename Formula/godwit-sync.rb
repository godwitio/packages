# typed: false
# frozen_string_literal: true

class GodwitSync < Formula
  desc "Plan-first S3 object storage migration and sync CLI"
  homepage "https://godwit.io"
  version "0.2.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.godwit.io/godwit-sync/v0.2.3/godwit-sync_0.2.3_darwin_arm64.tar.gz"
      sha256 "097ce4db6987953a5542cd20836e9992093b82b2e2bc7ece908f2c03c731d00d"
    else
      url "https://releases.godwit.io/godwit-sync/v0.2.3/godwit-sync_0.2.3_darwin_amd64.tar.gz"
      sha256 "b6efe210a3b9b536a53560f49c7faffcca143982bb2e3d9dc6ba045ea9e8bd61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.godwit.io/godwit-sync/v0.2.3/godwit-sync_0.2.3_linux_arm64.tar.gz"
      sha256 "c987136f4db7269627b9481761d87c67affe2daab9122c2753ae636ac4a7a211"
    else
      url "https://releases.godwit.io/godwit-sync/v0.2.3/godwit-sync_0.2.3_linux_amd64.tar.gz"
      sha256 "05ad90ff82d4dce44322c1241ab8ab1fe63534ce5220bdfddd313cdfc17c931f"
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
