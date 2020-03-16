class KeybaseCompletion < Formula
  desc "Bash completion for Keybase"
  homepage "https://github.com/jasonkarns/homebrew-homebrew"

  bottle :unneeded

  def install
    bash_completion.install "etc/completions/keybase.bash" => "keybase"
  end

  test do
    assert_match "complete -F _yarn yarn",
      shell_output("source #{bash_completion}/yarn && complete -p yarn")
  end
end
