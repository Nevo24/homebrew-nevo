class NevoGit < Formula
  desc "Git aliases, branch helpers, and worktree management for zsh"
  homepage "https://github.com/Nevo24/nevo-git"
  url "https://github.com/Nevo24/nevo-git/archive/refs/tags/v0.1.18.tar.gz"
  sha256 "1df9afcf428c73ce6a89010c77d2e94e02b22d2274bcd63f5d6a42db8ad634a2"
  license "MIT"

  def install
    (share/"nevo-git").install "nevo-git.zsh"
    (share/"nevo-git").install "git-diff-merge-wrapper.sh"
    chmod 0755, share/"nevo-git/git-diff-merge-wrapper.sh"
  end

  def caveats
    <<~EOS
      Add this to your ~/.zshrc:

        source "$(brew --prefix)/share/nevo-git/nevo-git.zsh"

      Then run: source ~/.zshrc

      Type `nevo-git` to see all available commands.
    EOS
  end

  test do
    assert_match "gits", shell_output("cat #{share}/nevo-git/nevo-git.zsh")
  end
end
