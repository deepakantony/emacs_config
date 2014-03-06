To simply use the .emacs file, copy it to your home directory. The .emacs is a hidden file under unix based machines so use `ls -a` to see it listed. 

The .emacs file uses many downloaded elisp files, which can be found under the "elisp" directory. For simplicity copy these files into "~/.emacs.d/auto-install" or place it any directory and edit the .emacs and it to the load-path.

A sample run of this process in freshly installed cygwin (this should work in other platforms too) is as follows:
```
$ git clone git@github.com:deepakantony/emacs_config.git
$ cp emacs_config/.emacs ~/
$ mkdir ~/.emacs.d/auto-install/
$ cp emacs_config/elisp/* ~/.emacs.d/auto-install/
```
Since this is the first time setting up emacs you might want to set up the latest emacs. If it is already installed rename it and them write a shell script to open the newly downloaded emacs.

Here is a sample run in cygwin:
```
$ which emacs
/usr/bin/emacs
$ mv /usr/bin/emacs /usr/bin/emacs.old
$ vi /usr/bin/emacs # this one works only in cygwin
#!/bin/bash
if [ $# -gt 0 ]
then
	/cygdrive/c/emacs-24.2/bin/emacs "$(cygpath -w $1)"
else 
	/cygdrive/c/emacs-24.2/bin/emacs
fi

$ chmod +x /usr/bin/emacs
```

In mac, the edit on the /usr/bin/emacs would look like this (I think this is best for other OS's too).
```
$ vi /usr/bin/emacs
EMACS_PATH=/Applications/Emacs.app/Contents/MacOS/Emacs

if [ $(id -u) = "0" ]; then
    sudo $EMACS_PATH $*
else
    $EMACS_PATH $*
fi

$ chmod +x /usr/bin/emacs
```
On Window, when you open a file without using cygwin, you can use the same emacs profile as the one used for cygwin by just pointing the environment variable HOME to the path to cygwin's home directory that has the .emacs file. For example: SET HOME=C:\cygwin\home\deepak\ under environment variables.
