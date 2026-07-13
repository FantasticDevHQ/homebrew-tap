class Finch < Formula
  desc "Twitter/X CLI for humans and agents"
  homepage "https://github.com/kellykampen/finch"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kellykampen/finch/releases/download/v0.4.0/finch-darwin-arm64"
      sha256 "2005d84b7cf5217f201463b50a2ed8fe5eb5b1d23380c28b324a54e596b272ef"
    else
      url "https://github.com/kellykampen/finch/releases/download/v0.4.0/finch-darwin-x64"
      sha256 "63a93af525622ba17acc8cb55fd94de5244e7fc8449f064b8b3f29549dc7c180"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kellykampen/finch/releases/download/v0.4.0/finch-linux-arm64"
      sha256 "f176ce39901bd44e75e6e73de1ca3e7f4362a65f488758f76a29cf802ce7b394"
    else
      url "https://github.com/kellykampen/finch/releases/download/v0.4.0/finch-linux-x64"
      sha256 "a470f1f9827a2841c902244db44b8b1d9371fa757134dbe6b085a9b55733b601"
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
