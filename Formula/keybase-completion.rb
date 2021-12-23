class KeybaseCompletion < Formula
  desc "Bash completion for Keybase"
  homepage "https://github.com/keybase/client/pull/11261"
  url "https://raw.githubusercontent.com/keybase/client/495ff6aeb0bb71da2539641b082faf98b85210dd/completion/bash"
  version "1.0.1"
  sha256 "bbbe0a6f9d3dce86d5656907b7598f34ac3841e176c271cef14516af4df7f4fa"
  revision 1

  bottle do
    root_url "https://github.com/jasonkarns/homebrew-homebrew/releases/download/keybase-completion-1.0.1_1"
    sha256 cellar: :any_skip_relocation, big_sur: "64898001fd4667e2c437fa5bf96df6d65dbbe76697a5f1486bf9414c38a9729e"
  end

  def install
    bash_completion.install "bash" => "keybase"
  end

  test do
    assert_match "complete -F _keybase keybase",
      shell_output(". #{bash_completion}/keybase && complete -p keybase")
  end
end
