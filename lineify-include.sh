# $SHELL is unreliable.  In particular, it doesn't get reset when I run bash
# inside zsh for testing. :)
# http://liquidat.wordpress.com/2007/07/28/short-tip-determine-current-shell/
# Sometimes we get '-zsh' or similar, so strip out that dash.
shell=`ps -p $$ | tail -1 | awk '{print $NF}' | sed 's/-//'`

# For development purposes only!
PATH=$PATH:.

case $shell in
"bash")
	trap 'terminal-screensaver-reset' DEBUG
	;;
"sh")
	trap 'terminal-screensaver-reset' DEBUG
	;;
"zsh")
	function preexec () { terminal-screensaver-reset; }
	;;
esac

# Use the PID to differentiate between shells.  We need to save it here because
# the scripts will run under their own PIDs.
export terminal_screensaver_pid=$$

# This will cause a shell exit to give the 'You have running jobs' error
# message, which requires an `fg` and interrupt before shell exit.
terminal-screensaverd &

