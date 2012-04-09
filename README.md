Screensavers are cool.  Why can't you have them in your terminals?

# Install

1. Copy `terminal-screensaver.conf.example` to `~/.terminal-screensaver.conf`
and modify as you wish.
2. In your `~/.bashrc` or `~/.zshrc`, add a sourcing of the
`terminal-screensaver-include.sh` file:

	```
	screensaver_source=$HOME/Documents/terminal-screensaver/terminal-screensaver-include.sh
	[[ -s "$screensaver_source" ]] && source "$screensaver_source"
	```

3. Put `terminal-screensaver` and `terminal-screensaver-reset` somewhere in
your `PATH`.
4. Read the comments in `terminal-screensaverd` and run it.

