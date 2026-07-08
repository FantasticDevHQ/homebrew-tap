class Finch < Formula
  desc "Twitter/X CLI for humans and agents"
  homepage "https://github.com/kellykampen/finch"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kellykampen/finch/releases/download/v0.3.0/finch-darwin-arm64"
      sha256 "42070b818af4bbd4fa29463ea840727de3104f218dfd50f8f1742b8eb21b1c61"
    else
      url "https://github.com/kellykampen/finch/releases/download/v0.3.0/finch-darwin-x64"
      sha256 "15ce812863a3862b505e9f72bf52804713d7e105a1a699f72d6c7c7a3d8718ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kellykampen/finch/releases/download/v0.3.0/finch-linux-arm64"
      sha256 "d40bf2bbfd97d1306ba5134ae9cfa67b060739bb11bc7bf66be226f7d86874c4"
    else
      url "https://github.com/kellykampen/finch/releases/download/v0.3.0/finch-linux-x64"
      sha256 "65e43a888819ac61e0f8bc8ff73f37d0c0d4ef7d4c85004b4a90a9bda72c145e"
    end
  end

  def install
    bin.install cached_download => "finch"
    chmod 0755, bin/"finch"
  end

  test do
    system "#{bin}/finch", "auth", "status", "--json"
  end
end
