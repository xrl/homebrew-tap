class ExpensifyCli < Formula
  desc "Command-line client for the Expensify Integration Server API"
  homepage "https://github.com/xrl/expensify-rs"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xrl/expensify-rs/releases/download/expensify-cli-0.2.1/expensify-cli-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "b0e05a0dcf5a294d67ad66d7c5689068c9745a82567965e012a8d52081ddcb80"
    else
      odie "expensify-cli ships only Apple Silicon (arm64) macOS bottles. Build from source: " \
           "cargo install expensify-cli"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xrl/expensify-rs/releases/download/expensify-cli-0.2.1/expensify-cli-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b817109572c81f077f9410131e2aa88a21c3a7baabec2920d8a80229f411f1e4"
    else
      url "https://github.com/xrl/expensify-rs/releases/download/expensify-cli-0.2.1/expensify-cli-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7444296eec1e861a47cffbe034fce3060bd69cb23d745b76d4af987fc2a8102"
    end
  end

  def install
    bin.install "expensify"
  end

  test do
    assert_match "expensify #{version}", shell_output("#{bin}/expensify --version")
  end
end
