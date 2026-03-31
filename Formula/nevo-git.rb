class NevoGit < Formula
  desc "Git aliases, branch helpers, and worktree management for zsh"
  homepage "https://github.com/Nevo24/nevo-git"
  url "https://github.com/Nevo24/nevo-git/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "a4e1bbc63be4b618092b9bb54c013bbe31812bb908a3ddda0b28e9953d0524dd"
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
