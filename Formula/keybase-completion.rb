class KeybaseCompletion < Formula
  desc "Bash completion for Keybase"
  homepage "https://github.com/jasonkarns/homebrew-homebrew"
  url "https://github.com/jasonkarns/homebrew-homebrew.git",
      :revision => "794f497f0cdc7e5723b9efd8ba1cc51392a7f07d"
  version "1.0.0"
  head "https://github.com/jasonkarns/homebrew-homebrew.git"

  bottle :unneeded

  def install
    bash_completion.install "etc/completions/keybase.bash" => "keybase"
  end

  test do
    assert_match "complete -F _keybase keybase",
                 shell_output("source #{bash_completion}/keybase && complete -p keybase")
  end
end
