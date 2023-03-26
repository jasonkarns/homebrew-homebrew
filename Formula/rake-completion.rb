class RakeCompletion < Formula
  desc "Bash completion for Rake"
  homepage "https://github.com/mernen/completion-ruby"
  url "https://github.com/mernen/completion-ruby.git",
    revision: "ae3da1ac62a7e08e22574d91c7dd3c433e9ac89d"
  version "2"
  license "MIT"
  head "https://github.com/mernen/completion-ruby.git", branch: "main"

  bottle :unneeded

  def install
    bash_completion.install "completion-rake" => "rake"
  end

  test do
    assert_match "-F __rake",
      shell_output("bash -c 'source #{bash_completion}/rake && complete -p rake'")
  end
end
