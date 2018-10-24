case "$-" in
*i*)
	if [ -f /usr/local/etc/bash_completion ]; then
		. /usr/local/etc/bash_completion
		. /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
	fi

	# Go
	#export GOPATH=~/git/go
	#export PATH=$PATH:$GOPATH/bin

	alias ls="ls -GFC"
	alias vi=nvi
	export PS1='\h:\w\$ '

	# Too slow
	#GIT_PS1_SHOWDIRTYSTATE=true
	#export PS1='\h:\w$(__git_ps1)\$ '
	;;
esac

# Wine
export WINEARCH=win32
export WINEDEBUG=-all
