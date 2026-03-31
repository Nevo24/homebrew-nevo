class NevoGit < Formula
  desc "Git aliases, branch helpers, and worktree management for zsh"
  homepage "https://github.com/Nevo24/nevo-git"
  url "https://github.com/Nevo24/nevo-git/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "78c4928edc8a254da55b85bdaaecb72aeae0926efa9daac78bea3f31f5459188"
  license "MIT"

  def install
    (share/"nevo-git").install "nevo-git.zsh"
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
