Screensavers are cool.  Why can't you have them in your terminals?

There is a video demo available [on YouTube](http://youtu.be/12lv4ogKr84).

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

# Caveats

This is a toy, designed for fun more than serious use.  The idea for it came
while watching my coworker pretend to hack on our codebase while running
`cmatrix`.

"Activity" is defined as commands run; this means that a screensaver might
trigger while you're in the middle of typing a command.  Thankfully, if you're
in `vim` for long enough for it to trigger, the screensaver won't launch until
you quit.

Since exiting the screensaver doesn't reset the counter, the polling mechanism
will frequently trigger the screensaver again before you have a chance to do
much of anything.  This should hopefully be fixed soon, but if you have any
clever ideas about this, please let me know.

