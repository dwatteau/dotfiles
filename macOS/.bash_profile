case "$-" in
*i*)
	# Kill "!" stuff
	set +o histexpand

	alias ls='ls -GFC'
	alias vi=nvi
	alias grep='grep --color'
	alias gerp=grep
	alias grpe=grep
	alias localip='ipconfig getifaddr en0'
	alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
	. /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
	export PS1='\h:\w\$ '
	;;
esac

# Bash on Catalina and newer
export BASH_SILENCE_DEPRECATION_WARNING=1

# Wine
export WINEARCH=win32
export WINEDEBUG=-all
