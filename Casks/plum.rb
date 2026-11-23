cask "plum" do
  version "0.1.1"
  sha256 "420cff1267868e030071025ec2fff5eb558c0adf6a4ee85e61a1912db0cb9089"

  url "https://github.com/YESHYUNGSEOK/plum/releases/download/v#{version}/Plum-#{version}-arm64.zip"
  name "Plum"
  desc "Run AI coding agents side by side, each in its own git worktree"
  homepage "https://github.com/YESHYUNGSEOK/plum"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Plum installs its own updates (checked against a signature published with each release).
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Plum.app"

  # Not notarized yet: Homebrew quarantines its downloads, and Gatekeeper would
  # stop the first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Plum.app"], must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/dev.plum.Plum",
    "~/Library/Preferences/dev.plum.Plum.plist",
  ]
end
