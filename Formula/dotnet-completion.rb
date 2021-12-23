class DotnetCompletion < Formula
  desc "Bash completion for dotnet cli"
  homepage "https://github.com/dotnet/sdk"
  url "https://raw.githubusercontent.com/dotnet/sdk/e80cf181f715697b88f18845d095bb9b623f325a/scripts/register-completions.bash"
  version "3.1.7"
  sha256 "90c1931ceb1f91b3535147761668b854e90c042a7fc138b7fec08b8a18961afc"
  revision 1
  license "MIT"

  def install
    bash_completion.install "register-completions.bash" => "dotnet"
  end

  test do
    assert_match "complete -f -F _dotnet_bash_complete dotnet",
                 shell_output("source #{bash_completion}/dotnet && complete -p dotnet")
  end
end
