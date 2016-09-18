# clr

`clr` is an old script I made when I was at the University and we had only
100MB of user space. It clears temporary files created by various applications.

It started on FreeBSD in 2009 and I adapted it for Ubuntu in 2011. There’s a
release blog post (in French) [over here][1].

[1]: http://bfontaine.net/staticblog/Outils/2011/08/09/sortie-de-clr-version-1.4.4c.html

## Install

    [sudo] make install

It’s installed under `/usr/local/bin/` by default. You can change this location
with `make install PREFIX=...`.

## Usage

Be aware that it hasn’t been significantly updated since 2012.

    clr [-c] [-l] [-v] [-f <file>]

* `-c`: Clear cookies
* `-l`: Light mode. Log and history files are truncated to 5 lines instead of
  being removed.
* `-v`: Non-verbose mode

Run `man clr` for more information.
