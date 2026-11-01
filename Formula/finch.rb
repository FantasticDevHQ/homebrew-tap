class Finch < Formula
  desc "Twitter/X CLI for humans and agents"
  homepage "https://github.com/FantasticDevHQ/finch"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FantasticDevHQ/finch/releases/download/v0.4.1/finch-darwin-arm64"
      sha256 "4713a74526a97a00c5997d945e475599a320c0bbb4bdc36182876cdfbcd18c82"
    else
      url "https://github.com/FantasticDevHQ/finch/releases/download/v0.4.1/finch-darwin-x64"
      sha256 "3c3c2a510d3ae250a0b3239ec858ee79276d7564e7b2e57a9a751f92b7cb0490"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FantasticDevHQ/finch/releases/download/v0.4.1/finch-linux-arm64"
      sha256 "a77e52b5bf3dfcffdd78b849f59f4ba91737f1e26895f5653d0a6abf4634135c"
    else
      url "https://github.com/FantasticDevHQ/finch/releases/download/v0.4.1/finch-linux-x64"
      sha256 "2426860606471fe1cfe7331f5d9146573b5af4fbead4b5abb51ead11f5e570cd"
    end
  end

  def install
    bin.install cached_download => "finch"
    chmod 0755, bin/"finch"
  end

  test do
    system bin/"finch", "auth", "status", "--json"
  end
end
