" natd.conf syntax file
" Language: *BSD natd configuration file.
" Maintainer: Franco Lucchini <franco@elleci.org>
" Last Change: 2008 Mar 14
"
" Syntax file for FreeBSD/Darwin/OSX natd configuration syntax file.
"
"
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn	match	NATDComment		/#.*$/	contains=NATDTodo
syn keyword	NATDTodo		TODO XXX FIXME contained

syn keyword	NATDCommand		redirect_port redirect_proto redirect_address alias_address target_address interface
syn keyword	NATDCommand		log deny_incoming log_denied log_facility use_sockets same_ports verbose unregistered_only
syn keyword	NATDCommand		in_port out_port port reverse proxy_only proxy_rule punch_fw clamp_mss dynamic

syn match	NATDInterface	/\w\+[\d*]/

syn keyword	NATDProto		tcp udp icmp ip
syn keyword NATDWild		all any me

syn keyword	NATDOption		XXXXXX

syn keyword NATDTrafCmd		pipe queue config bw delay weight 
syn keyword NATDTrafPar		buckets mask noerror plr queue red gred 

syn match	NATDIPv4		/\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}/
syn match	NATDNetmask		/\/\d\+/
syn match	NATDPort		/:\d\+/

" service name constants
syn keyword NATDService  auth bgp domain finger ftp http https ident
syn keyword NATDService  imap irc isakmp kerberos mail nameserver nfs
syn keyword NATDService  nntp ntp pop3 portmap pptp rpcbind rsync smtp
syn keyword NATDService  snmp snmptrap socks ssh sunrpc syslog telnet
syn keyword NATDService  tftp www

"Comment [azzurro]
"Constant [rosa]
"Special [arancioquasigiallo]
"Identifier [verde]
"Statement [giallo]
"PreProc [rosso]
"Type [sepia]
"Ignore [grigio]
"Error [rosso sfondo]
"Todo [gialloo sfondo]

" Comment
hi def link NATDPort			Comment
hi def link NATDComment			Comment
hi def link NATDTodo			Todo
hi def link NATDCommand			Statement
hi def link NATDService			Constant
hi def link NATDInterface		PreProc
"hi NATDActAllow	ctermfg=lightgreen guifg=lightgreen
"hi NATDActDeny	ctermfg=red guifg=red
hi def link NATDProto			Type
hi def link NATDNetmask			Comment
hi def link NATDIPv4			Identifier
hi def link NATDWild			Identifier	
hi def link NATDOption			Special
