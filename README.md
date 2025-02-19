### Install:
```sh
bash <(curl https://raw.githubusercontent.com/supervanya/.dotfiles/main/init.sh)
```

### Todo:
- [ ] Can raycast config be autoapplied?
- [ ] iterm2 installed through brew

### Current issues:
1. Need to install dev tools in mac os first
2. Some issues with how the git is setup
```sh
fatal: --local can only be used inside a git repository
fatal: not a git repository: '/Users/ivanprokopovich/github/.dotfiles'
/dev/fd/12: line 21: /Users/ivanprokopovich/.config/tmux/tmux.conf: No such file or directory
``` 
3. After installing brew, it needs to be added to the profile and sourced otherwise this happens:
```sh
==> Next steps:
- Run these commands in your terminal to add Homebrew to your PATH:
    echo >> /Users/ivanprokopovich/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ivanprokopovich/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh

/dev/fd/13: line 27: brew: command not found
/dev/fd/13: line 28: brew: command not found
/dev/fd/13: line 29: brew: command not found
/dev/fd/13: line 30: brew: command not found
```



First attempt on a clean mac:
```sh
Last login: Tue Feb 18 00:41:49 on console
ivanprokopovich@ivans-mbp ~ % brew
zsh: command not found: brew
ivanprokopovich@ivans-mbp ~ % bash <(curl https://raw.githubusercontent.com/supervanya/.dotfiles/main/init.sh)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1013  100  1013    0     0   4777      0 --:--:-- --:--:-- --:--:--  4800
Directory does not exist. Cloning repository...
xcode-select: note: No developer tools were found, requesting install.
If developer tools are located at a non-default location on disk, use `sudo xcode-select --switch path/to/Xcode.app` to specify the Xcode that you wish to use for command line developer tools, and cancel the installation dialog.
See `man xcode-select` for more details.
xcode-select: note: No developer tools were found, requesting install.
If developer tools are located at a non-default location on disk, use `sudo xcode-select --switch path/to/Xcode.app` to specify the Xcode that you wish to use for command line developer tools, and cancel the installation dialog.
See `man xcode-select` for more details.
xcode-select: note: No developer tools were found, requesting install.
If developer tools are located at a non-default location on disk, use `sudo xcode-select --switch path/to/Xcode.app` to specify the Xcode that you wish to use for command line developer tools, and cancel the installation dialog.
See `man xcode-select` for more details.
/dev/fd/11: line 21: /Users/ivanprokopovich/.config/tmux/tmux.conf: No such file or directory
==> Checking for `sudo` access (which may request your password)...
Password:
sudo: a password is required
Need sudo access on macOS (e.g. the user ivanprokopovich needs to be an Administrator)!
/dev/fd/11: line 27: brew: command not found
/dev/fd/11: line 28: brew: command not found
/dev/fd/11: line 29: brew: command not found
/dev/fd/11: line 30: brew: command not found
ivanprokopovich@ivans-mbp ~ % bash <(curl https://raw.githubusercontent.com/supervanya/.dotfiles/main/init.sh)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1013  100  1013    0     0   4742      0 --:--:-- --:--:-- --:--:--  4733
Directory does not exist. Cloning repository...
Cloning into bare repository '/Users/ivanprokopovich/github/.dotfiles'...
The authenticity of host 'github.com (140.82.114.4)' can't be established.
ED25519 key fingerprint is SHA256:+*******.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
fatal: --local can only be used inside a git repository
fatal: not a git repository: '/Users/ivanprokopovich/github/.dotfiles'
/dev/fd/12: line 21: /Users/ivanprokopovich/.config/tmux/tmux.conf: No such file or directory
==> Checking for `sudo` access (which may request your password)...
Password:
==> This script will install:
/opt/homebrew/bin/brew
/opt/homebrew/share/doc/homebrew
/opt/homebrew/share/man/man1/brew.1
/opt/homebrew/share/zsh/site-functions/_brew
/opt/homebrew/etc/bash_completion.d/brew
/opt/homebrew
==> The following new directories will be created:
/opt/homebrew/bin
/opt/homebrew/etc
/opt/homebrew/include
/opt/homebrew/lib
/opt/homebrew/sbin
/opt/homebrew/share
/opt/homebrew/var
/opt/homebrew/opt
/opt/homebrew/share/zsh
/opt/homebrew/share/zsh/site-functions
/opt/homebrew/var/homebrew
/opt/homebrew/var/homebrew/linked
/opt/homebrew/Cellar
/opt/homebrew/Caskroom
/opt/homebrew/Frameworks

Press RETURN/ENTER to continue or any other key to abort:
==> /usr/bin/sudo /usr/bin/install -d -o root -g wheel -m 0755 /opt/homebrew
==> /usr/bin/sudo /bin/mkdir -p /opt/homebrew/bin /opt/homebrew/etc /opt/homebrew/include /opt/homebrew/lib /opt/homebrew/sbin /opt/homebrew/share /opt/homebrew/var /opt/homebrew/opt /opt/homebrew/share/zsh /opt/homebrew/share/zsh/site-functions /opt/homebrew/var/homebrew /opt/homebrew/var/homebrew/linked /opt/homebrew/Cellar /opt/homebrew/Caskroom /opt/homebrew/Frameworks
==> /usr/bin/sudo /bin/chmod ug=rwx /opt/homebrew/bin /opt/homebrew/etc /opt/homebrew/include /opt/homebrew/lib /opt/homebrew/sbin /opt/homebrew/share /opt/homebrew/var /opt/homebrew/opt /opt/homebrew/share/zsh /opt/homebrew/share/zsh/site-functions /opt/homebrew/var/homebrew /opt/homebrew/var/homebrew/linked /opt/homebrew/Cellar /opt/homebrew/Caskroom /opt/homebrew/Frameworks
==> /usr/bin/sudo /bin/chmod go-w /opt/homebrew/share/zsh /opt/homebrew/share/zsh/site-functions
==> /usr/bin/sudo /usr/sbin/chown ivanprokopovich /opt/homebrew/bin /opt/homebrew/etc /opt/homebrew/include /opt/homebrew/lib /opt/homebrew/sbin /opt/homebrew/share /opt/homebrew/var /opt/homebrew/opt /opt/homebrew/share/zsh /opt/homebrew/share/zsh/site-functions /opt/homebrew/var/homebrew /opt/homebrew/var/homebrew/linked /opt/homebrew/Cellar /opt/homebrew/Caskroom /opt/homebrew/Frameworks
==> /usr/bin/sudo /usr/bin/chgrp admin /opt/homebrew/bin /opt/homebrew/etc /opt/homebrew/include /opt/homebrew/lib /opt/homebrew/sbin /opt/homebrew/share /opt/homebrew/var /opt/homebrew/opt /opt/homebrew/share/zsh /opt/homebrew/share/zsh/site-functions /opt/homebrew/var/homebrew /opt/homebrew/var/homebrew/linked /opt/homebrew/Cellar /opt/homebrew/Caskroom /opt/homebrew/Frameworks
==> /usr/bin/sudo /usr/sbin/chown -R ivanprokopovich:admin /opt/homebrew
==> /usr/bin/sudo /bin/mkdir -p /Users/ivanprokopovich/Library/Caches/Homebrew
==> /usr/bin/sudo /bin/chmod g+rwx /Users/ivanprokopovich/Library/Caches/Homebrew
==> /usr/bin/sudo /usr/sbin/chown -R ivanprokopovich /Users/ivanprokopovich/Library/Caches/Homebrew
==> Downloading and installing Homebrew...
remote: Enumerating objects: 292837, done.
remote: Counting objects: 100% (253/253), done.
remote: Compressing objects: 100% (140/140), done.
remote: Total 292837 (delta 162), reused 163 (delta 113), pack-reused 292584 (from 3)
remote: Enumerating objects: 55, done.
remote: Counting objects: 100% (33/33), done.
remote: Total 55 (delta 33), reused 33 (delta 33), pack-reused 22 (from 1)
==> Updating Homebrew...
==> Downloading https://ghcr.io/v2/homebrew/portable-ruby/portable-ruby/blobs/sha256:d9faa506c014dedc0b034a68103ba75c9a58242f4d6c67b6ca0f649c39602bcf
############################################################################################################################ 100.0%
==> Pouring portable-ruby-3.3.7.arm64_big_sur.bottle.tar.gz
Warning: /opt/homebrew/bin is not in your PATH.
  Instructions on how to configure your shell for Homebrew
  can be found in the 'Next steps' section below.
==> Installation successful!

==> Homebrew has enabled anonymous aggregate formulae and cask analytics.
Read the analytics documentation (and how to opt-out) here:
  https://docs.brew.sh/Analytics
No analytics data has been sent yet (nor will any be during this install run).

==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations

==> Next steps:
- Run these commands in your terminal to add Homebrew to your PATH:
    echo >> /Users/ivanprokopovich/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ivanprokopovich/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh

/dev/fd/12: line 27: brew: command not found
/dev/fd/12: line 28: brew: command not found
/dev/fd/12: line 29: brew: command not found
/dev/fd/12: line 30: brew: command not found
ivanprokopovich@ivans-mbp ~ % ls -a
.			.Trash			Desktop			Movies			github
..			.config			Documents		Music
.CFUserTextEncoding	.ssh			Downloads		Pictures
.DS_Store		.zsh_sessions		Library			Public
ivanprokopovich@ivans-mbp ~ % ls -l -a
total 24
drwxr-x---+ 17 ivanprokopovich  staff   544 Feb 18 11:12 .
drwxr-xr-x   5 root             admin   160 Feb 18 00:41 ..
-r--------   1 ivanprokopovich  staff     7 Feb 17 20:32 .CFUserTextEncoding
-rw-r--r--@  1 ivanprokopovich  staff  6148 Feb 18 10:32 .DS_Store
drwx------+  3 ivanprokopovich  staff    96 Feb 17 23:31 .Trash
drwxr-xr-x   2 ivanprokopovich  staff    64 Feb 18 11:10 .config
drwx------   3 ivanprokopovich  staff    96 Feb 18 11:12 .ssh
drwx------   4 ivanprokopovich  staff   128 Feb 18 10:32 .zsh_sessions
drwx------@ 31 ivanprokopovich  staff   992 Feb 18 10:02 Desktop
drwx------@ 55 ivanprokopovich  staff  1760 Feb 18 00:50 Documents
drwx------+  6 ivanprokopovich  staff   192 Feb 18 10:33 Downloads
drwx------@ 89 ivanprokopovich  staff  2848 Feb 18 11:08 Library
drwx------   4 ivanprokopovich  staff   128 Feb 18 08:34 Movies
drwx------+  3 ivanprokopovich  staff    96 Feb 17 20:32 Music
drwx------+  4 ivanprokopovich  staff   128 Feb 17 20:32 Pictures
drwxr-xr-x+  4 ivanprokopovich  staff   128 Feb 17 20:32 Public
drwxr-xr-x   2 ivanprokopovich  staff    64 Feb 18 11:12 github
ivanprokopovich@ivans-mbp ~ % cd github
ivanprokopovich@ivans-mbp github % ls -l -a 
total 0
drwxr-xr-x   2 ivanprokopovich  staff   64 Feb 18 11:12 .
drwxr-x---+ 17 ivanprokopovich  staff  544 Feb 18 11:12 ..
ivanprokopovich@ivans-mbp github % ..
zsh: permission denied: ..
ivanprokopovich@ivans-mbp github % ls -l -a
total 0
drwxr-xr-x   2 ivanprokopovich  staff   64 Feb 18 11:12 .
drwxr-x---+ 17 ivanprokopovich  staff  544 Feb 18 11:12 ..
ivanprokopovich@ivans-mbp github % cd ..
ivanprokopovich@ivans-mbp ~ % ls -l -a
total 24
drwxr-x---+ 17 ivanprokopovich  staff   544 Feb 18 11:12 .
drwxr-xr-x   5 root             admin   160 Feb 18 00:41 ..
-r--------   1 ivanprokopovich  staff     7 Feb 17 20:32 .CFUserTextEncoding
-rw-r--r--@  1 ivanprokopovich  staff  6148 Feb 18 10:32 .DS_Store
drwx------+  3 ivanprokopovich  staff    96 Feb 17 23:31 .Trash
drwxr-xr-x   2 ivanprokopovich  staff    64 Feb 18 11:10 .config
drwx------   3 ivanprokopovich  staff    96 Feb 18 11:12 .ssh
drwx------   4 ivanprokopovich  staff   128 Feb 18 10:32 .zsh_sessions
drwx------@ 31 ivanprokopovich  staff   992 Feb 18 10:02 Desktop
drwx------@ 55 ivanprokopovich  staff  1760 Feb 18 00:50 Documents
drwx------+  6 ivanprokopovich  staff   192 Feb 18 10:33 Downloads
drwx------@ 89 ivanprokopovich  staff  2848 Feb 18 11:08 Library
drwx------   4 ivanprokopovich  staff   128 Feb 18 08:34 Movies
drwx------+  3 ivanprokopovich  staff    96 Feb 17 20:32 Music
drwx------+  4 ivanprokopovich  staff   128 Feb 17 20:32 Pictures
drwxr-xr-x+  4 ivanprokopovich  staff   128 Feb 17 20:32 Public
drwxr-xr-x   2 ivanprokopovich  staff    64 Feb 18 11:12 github
ivanprokopovich@ivans-mbp ~ % cd .config
ivanprokopovich@ivans-mbp .config % ls -l -a  
total 0
drwxr-xr-x   2 ivanprokopovich  staff   64 Feb 18 11:10 .
drwxr-x---+ 17 ivanprokopovich  staff  544 Feb 18 11:12 ..
ivanprokopovich@ivans-mbp .config % cd ..
ivanprokopovich@ivans-mbp ~ % cd github
ivanprokopovich@ivans-mbp github % ls -l -a 
total 0
drwxr-xr-x   2 ivanprokopovich  staff   64 Feb 18 11:12 .
drwxr-x---+ 17 ivanprokopovich  staff  544 Feb 18 11:12 ..
ivanprokopovich@ivans-mbp github % mkdir .dotfiles
ivanprokopovich@ivans-mbp github % ls -l -a       
total 0
drwxr-xr-x   3 ivanprokopovich  staff   96 Feb 18 11:16 .
drwxr-x---+ 17 ivanprokopovich  staff  544 Feb 18 11:12 ..
drwxr-xr-x   2 ivanprokopovich  staff   64 Feb 18 11:16 .dotfiles
ivanprokopovich@ivans-mbp github % cd ..
ivanprokopovich@ivans-mbp ~ % ls -l -a       
total 24
drwxr-x---+ 17 ivanprokopovich  staff   544 Feb 18 11:12 .
drwxr-xr-x   5 root             admin   160 Feb 18 00:41 ..
-r--------   1 ivanprokopovich  staff     7 Feb 17 20:32 .CFUserTextEncoding
-rw-r--r--@  1 ivanprokopovich  staff  6148 Feb 18 10:32 .DS_Store
drwx------+  3 ivanprokopovich  staff    96 Feb 17 23:31 .Trash
drwxr-xr-x   2 ivanprokopovich  staff    64 Feb 18 11:10 .config
drwx------   3 ivanprokopovich  staff    96 Feb 18 11:12 .ssh
drwx------   4 ivanprokopovich  staff   128 Feb 18 10:32 .zsh_sessions
drwx------@ 31 ivanprokopovich  staff   992 Feb 18 10:02 Desktop
drwx------@ 55 ivanprokopovich  staff  1760 Feb 18 00:50 Documents
drwx------+  6 ivanprokopovich  staff   192 Feb 18 10:33 Downloads
drwx------@ 89 ivanprokopovich  staff  2848 Feb 18 11:08 Library
drwx------   4 ivanprokopovich  staff   128 Feb 18 08:34 Movies
drwx------+  3 ivanprokopovich  staff    96 Feb 17 20:32 Music
drwx------+  4 ivanprokopovich  staff   128 Feb 17 20:32 Pictures
drwxr-xr-x+  4 ivanprokopovich  staff   128 Feb 17 20:32 Public
drwxr-xr-x   3 ivanprokopovich  staff    96 Feb 18 11:16 github
ivanprokopovich@ivans-mbp ~ % bash <(curl https://raw.githubusercontent.com/supervanya/.dotfiles/main/init.sh)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1013  100  1013    0     0   6723      0 --:--:-- --:--:-- --:--:--  6753
Directory exists. Pulling latest changes...
fatal: not a git repository: '/Users/ivanprokopovich/github/.dotfiles'
Failed to pull latest changes.
ivanprokopovich@ivans-mbp ~ % bash <(curl https://raw.githubusercontent.com/supervanya/.dotfiles/main/init.sh)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1013  100  1013    0     0  20850      0 --:--:-- --:--:-- --:--:-- 21104
Directory exists. Pulling latest changes...
fatal: not a git repository: '/Users/ivanprokopovich/github/.dotfiles'
Failed to pull latest changes.
ivanprokopovich@ivans-mbp ~ % rm -rf github/.dotfiles 
ivanprokopovich@ivans-mbp ~ % bash <(curl https://raw.githubusercontent.com/supervanya/.dotfiles/main/init.sh)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1013  100  1013    0     0  18951      0 --:--:-- --:--:-- --:--:-- 19113
Directory does not exist. Cloning repository...
Cloning into bare repository '/Users/ivanprokopovich/github/.dotfiles'...
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
fatal: --local can only be used inside a git repository
fatal: not a git repository: '/Users/ivanprokopovich/github/.dotfiles'
/dev/fd/13: line 21: /Users/ivanprokopovich/.config/tmux/tmux.conf: No such file or directory
==> Checking for `sudo` access (which may request your password)...
Password:
==> This script will install:
/opt/homebrew/bin/brew
/opt/homebrew/share/doc/homebrew
/opt/homebrew/share/man/man1/brew.1
/opt/homebrew/share/zsh/site-functions/_brew
/opt/homebrew/etc/bash_completion.d/brew
/opt/homebrew

Press RETURN/ENTER to continue or any other key to abort:
==> /usr/bin/sudo /usr/sbin/chown -R ivanprokopovich:admin /opt/homebrew
==> Downloading and installing Homebrew...
==> Updating Homebrew...
Warning: /opt/homebrew/bin is not in your PATH.
  Instructions on how to configure your shell for Homebrew
  can be found in the 'Next steps' section below.
==> Installation successful!

==> Homebrew has enabled anonymous aggregate formulae and cask analytics.
Read the analytics documentation (and how to opt-out) here:
  https://docs.brew.sh/Analytics
No analytics data has been sent yet (nor will any be during this install run).

==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations

==> Next steps:
- Run these commands in your terminal to add Homebrew to your PATH:
    echo >> /Users/ivanprokopovich/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ivanprokopovich/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh

/dev/fd/13: line 27: brew: command not found
/dev/fd/13: line 28: brew: command not found
/dev/fd/13: line 29: brew: command not found
/dev/fd/13: line 30: brew: command not found
ivanprokopovich@ivans-mbp ~ % 
```
