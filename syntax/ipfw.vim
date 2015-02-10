" IPFWw syntax file
" Language: IPFWw configuration file
" Maintainer: Franco Lucchini <franco@elleci.org>
" Last Change: 2008 Mar 14
"
" Syntax file for FreeBSD/Darwin/OSX IPFWw rules files.
"
"
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn	match	IPFWComment		/#.*$/	contains=IPFWTodo
syn keyword	IPFWTodo		TODO XXX FIXME contained

syn keyword	IPFWCommand		add flush list log show enable disable set move swap from to
syn match	IPFWInterface	/\w\+[\d*]/

syn keyword	IPFWActAllow    allow access pass permit 
syn keyword	IPFWActDeny     deny drop reject
syn keyword	IPFWActOther    tee unreach check-state count divert fwd forward pipe queue reset skipto

syn keyword	IPFWProto		tcp udp icmp ip
syn keyword IPFWWild		all any me

syn match	IPFWOption		/dst-ip/
syn match	IPFWOption		/dst-port/
syn match	IPFWOption		/keep-state/
syn match	IPFWOption		/mac-type/
syn match	IPFWOption		/src-ip/
syn match	IPFWOption		/src-port/
syn keyword IPFWOption		bridged established frag gid icmptypes
syn keyword IPFWOption		in out ipid iplen ipoptions ipprecedence ipsec iptos ipttl
syn keyword IPFWOption		ipversion layer2 limit mac MAC proto
syn keyword IPFWOption		recv xmit via ipno setup tcpack tcpflags
syn keyword IPFWOption		tcpseq tcpwin tcpoptions uid verrevpath 

syn keyword IPFWTrafCmd		pipe queue config bw delay weight 
syn keyword IPFWTrafPar		buckets mask noerror plr queue red gred 

syn match	IPFWIPv4		/\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}/
syn match	IPFWNetmask		/\/\d\+/
syn match	IPFWRuleID		/\d\{5}/

" service name constants
syn keyword IPFWService  auth bgp domain finger ftp http https ident
syn keyword IPFWService  imap irc isakmp kerberos mail nameserver nfs
syn keyword IPFWService  nntp ntp pop3 portmap pptp rpcbind rsync smtp
syn keyword IPFWService  snmp snmptrap socks ssh sunrpc syslog telnet
syn keyword IPFWService  tftp www

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
hi def link IPFWRuleID			Comment
hi def link IPFWComment			Comment
hi def link IPFWTodo			Todo
hi def link IPFWCommand			Statement
hi def link IPFWActOther		col_orange
hi def link IPFWService			Constant
hi def link IPFWInterface		PreProc
hi IPFWActAllow	ctermfg=lightgreen guifg=lightgreen
hi IPFWActDeny	ctermfg=red guifg=red
hi def link IPFWProto			Type
hi def link IPFWNetmask			Comment
hi def link IPFWIPv4			Identifier
hi def link IPFWWild			Identifier	
hi def link IPFWOption			Special
