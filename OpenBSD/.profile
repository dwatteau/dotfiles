# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization
set -o csh-history

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM

case "$-" in
*i*)
	[ x"$TERM" = x"vt220" ] && export TERM=wsvt25
	alias ls='LSCOLORS=ExGxFxdxCxegDxbhheacad colorls -GF'
	alias sudo=doas
	alias man='MANPAGER=more man -T ascii'
	export PS1='\h:\w\$ '
	;;
esac

export LC_CTYPE=fr_FR.UTF-8
export LC_MESSAGES=fr_FR.UTF-8

export GIT_EDITOR=vim
