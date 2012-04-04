# $SHELL is unreliable.  In particular, it doesn't get reset when I run bash
# inside zsh for testing. :)
# http://liquidat.wordpress.com/2007/07/28/short-tip-determine-current-shell/
# Sometimes we get '-zsh' or similar, so strip out that dash.
shell=`ps -p $$ | tail -1 | awk '{print $NF}' | sed 's/-//'`

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

