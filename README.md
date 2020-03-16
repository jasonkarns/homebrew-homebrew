# homebrew-homebrew

This is a Homebrew tap providing miscellaneous formulae that I find useful.

<!-- START doctoc -->
<!-- END doctoc -->

## Installing Formulae

 `brew tap jasonkarns/homebrew` and then `brew install <formula>`.
 (Or `brew install jasonkarns/homebrew/<formula>`.)
 You only need to tap the repository once.

 You can also install via URL:

 ```
 brew install https://raw.githubusercontent.com/jasonkarns/homebrew-homebrew/master/<formula>.rb
 ```

 ## Troubleshooting & Documentation

 - `brew update` and `brew doctor`.
 - [Homebrew Troubleshooting Checklist](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Troubleshooting.md#troubleshooting)
 - `brew help`
 - `man brew`
 - [Homebrew documentation](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme)

 ## Contributing

 Have a look at the [Homebrew Formula Cookbook](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md).  In particular, your formula should pass `brew audit --strict <formula>` and `brew test <formula>`.
