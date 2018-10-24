# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization
set -o csh-history

PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/sbin:/usr/local/bin
export PATH HOME TERM

case "$-" in
*i*)
	alias ls="LSCOLORS=ExGxFxdxCxegDxbhheacad colorls -GF"
	alias sudo="doas"
	bind -m ^L="^Cclear^M"
	;;
esac

export LC_CTYPE=fr_FR.UTF-8
export LC_MESSAGES=fr_FR.UTF-8
export PS1='\h:\w\$ '
