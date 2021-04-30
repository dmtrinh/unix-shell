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
