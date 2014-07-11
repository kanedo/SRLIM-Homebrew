SRLIM-Homebrew
==============

Homebrew formula to install SRLIM on mac

usage
------

Get the latest version of [SRLIM from their homepage](http://www.speech.sri.com/projects/srilm/). Unpack it and make the appropriate changes to the makefile.
Hint:
```
SRILM := $(shell pwd)
```

pack it and place it wherever you can provide an url to. Paste this URL to line `7` of the formula and copy the formula file to brews `Library/Formula`. 