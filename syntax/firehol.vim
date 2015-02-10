" Vim syntax file

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

"let g:is_bash=1

"runtime! syntax/sh.vim

"nextgroup=fhFunction skipwhite
syn keyword fhTodo	TODO FIXME XXX contained
syn keyword fhPrimary	interface router policy 
syn keyword fhSecondary	polocy protection server client route group
syn keyword fhHelper	action blacklist dnat dscp ecn_shname iptables mac mark masquerade nat redirect
syn keyword fhHelper	snat tcpmss tos transparent_proxy transparent_squid version
syn keyword fhAction	accept reject drop deny tarpit return mirror redirect
syn keyword fhParameter	src dst srctype dsttype iface outface physin physout custom log loglimit proto limit
syn keyword fhParameter	sport dport uid user gid group pid process sid session cmd command mac mark tos dscp
syn keyword fhConstant	DEFAULT_INTERFACE_POLICY DEFAULT_ROUTER_POLICY UNMATCHED_INPUT_POLICY UNMATCHED_OUTPUT_POLICY
syn keyword fhConstant	UNMATCHED_ROUTER_POLICY FIREHOL_INPUT_ACTIVATION_POLICY FIREHOL_OUTPUT_ACTIVATION_POLICY FIREHOL_FORWARD_ACTIVATION_POLICY
syn keyword fhConstant	FIREHOL_LOG_MODE FIREHOL_LOG_LEVEL FIREHOL_LOG_OPTIONS FIREHOL_LOG_FREQUENCY FIREHOL_LOG_BURST FIREHOL_LOG_PREFIX FIREHOL_DROP_INVALID
syn keyword fhConstant	DEFAULT_CLIENT_PORTS FIREHOL_NAT FIREHOL_AUTOSAVE FIREHOL_LOAD_KERNEL_MODULES FIREHOL_TRUST_LOOPBACK FIREHOL_DROP_ORPHAN_TCP_ACK_FIN
syn keyword fhConstant	RESERVED_IPS PRIVATE_IPS UNROUTABLE_IPS MULTICAST_IPS
syn keyword fhModifier	reverse with end limit knock recent overflow class

syn keyword fhService	AH ESP GRE ICMP OSPF
syn keyword fhService	apcupsd apcupsdnis aptproxy asterisk cups cvspports darkstat daytime dcc dcpp dhcp dhcprelay dict distcc dns echo eports finger ftp gift giftui gkrellmd h323 heartbeat http https iax2 iax icmp icp 
syn keyword fhService	ident imap imaps irc isakmp jabber jabberd ldap ldaps lpd microsoft_ds mms msn mysql netbackup netbios_dgm netbios_ns netbios_ssn nntp nntps ntp nut nxports openvpn oracle pop3 pop3s portmap
syn keyword fhService	postgres privoxy radius radiusold radiusoldproxy radiusproxy rdp rndc rsync rtp samba sip smtp smtps snmp snmptrap socks squid ssh stun submission sunrpc swat syslog telnet time upnp uucp vmware
syn keyword fhService	vmwareauth vmwareweb vnc webcache webmin whois xdmcp

"syn match   fhFunction	"[a-zA-Z_][a-zA-Z0-9_]*" contained

if version >= 508 || !exists("did_fh_syn_inits")
  if version <= 508
    let did_fh_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " The default methods for highlighting.  Can be overridden later
  HiLink fhPrimary	Statement
  HiLink fhSecondary	Statement
  HiLink fhHelper	Statement
  HiLink fhAction	Exception
  HiLink fhConstant	Define
  HiLink fhService	Define
  HiLink fhParameter	Repeat
  HiLink fhModifier	PreCondit
  delcommand HiLink
endif

let b:current_syntax = "fh"

" vim: ts=8
