Reasonable defaults after setting up a new Unix account.

# Usage
```
git clone https://github.com/dmtrinh/unix-shell.git
unix-shell/setup.sh
```

To update your account to use a different shell, use chsh.  For example, `chsh -s /bin/zsh` to use zsh

To preview zsh prompt sequences, use:
```
print -P '%B%F{red}co%F{green}lo%F{blue}rs%f%b'
```
# Additional Tools
* [SDKMAN!](https://sdkman.io/install) for managing SDKs and their different versions
```
curl -s "https://get.sdkman.io" | bash
```
* [Oh My Zsh!](https://github.com/ohmyzsh/ohmyzsh/wiki) plugin for making your Z shell even more awesome.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
* [Homebrew](https://brew.sh/) package manager.  Since Homebrew packages are designed to only provide per-user functionality, Homebrew can be used alongside the native system package manager without creating conflicts.
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For those on macOS, you can use Homebrew Cask to even install apps such as
* [VS Code](https://code.visualstudio.com/)
```
brew install --cask visual-studio-code
```
* [Microsoft Edge](https://www.microsoft.com/edge)
```
brew install --cask microsoft-edge
```
* [iTerm2](https://www.iterm2.com/)
```
brew install --cask iterm2
```
