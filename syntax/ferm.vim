" Vim syntax file
" Language:	Ferm
" Maintainer:	Franco Lucchini
" Last Change:	2011 March 17
"
" Remove any old syntax stuff that was loaded (5.x) or quit when a syntax file
" was already loaded (6.x).
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version >= 600
  setlocal iskeyword=@,-,48-57,_,A-Z,a-z
else
  set iskeyword=@,-,48-57,_,A-Z,a-z
endif

"syn keyword fermPreProc		@if @else @def @eq @ne @not @include @subchain
syn keyword fermLocation	domain table chain policy
syn keyword fermProto		udp tcp icmp dccp dscp esp sctp
syn keyword fermMatch		interface outerface protocol saddr daddr fragment sport dport syn module mod mac source
syn keyword fermMatch		account addrtype ah comment condition connbytes connlimit connmark conntrack ecn eui64 fuzzy hbh hl helper iprange ipv4options ipv6header hashlimit length limit
syn keyword fermMatch		mark mh multiport nth owner physdev pkttype policy psd quota random realm recent rt set state statistic string tcpmss time tos ttl u32 unclean tcp-flags mac-source
syn keyword fermTarget		jump realgoto ACCEPT DROP REJECT RETURN NOP
syn keyword fermTarget		CLASSIFY CLUSTERIP CONNMARK CONNSECMARK DNAT ECN HL IPV4OPTSTRIP LOG MARK MASQUERADE MIRROR NETMAP NOTRACK NFLOG NFQUEUE QUEUE REDIRECT SAME SECMARK SET SNAT TCPMSS TOS TTL ULOG
syn keyword fermChain		PREROUTING INPUT FORWARD OUTPUT POSTROUTING
syn keyword fermTable		filter nat mangle
syn keyword fermArptables	source-ip destination-ip source-mac destination-mac interface outerface h-length opcode h-type proto-type mangle-ip-s mangle-ip-d mangle-mac-s mangle-mac-d mangle-target
syn keyword fermEbtables	proto interface outerface logical-in logical-out saddr daddr 802.3 arp ip mark_m pkttype stp vlan log arpreply dnat mark redirect snat
syn keyword fermBuiltins	$FILENAME $DIRNAME $DOMAIN $TABLE $CHAIN

syn keyword fermHookTime		pre post flush contained
syn keyword fermTodo			TODO TBD FIXME XXX contained

syn match fermPreProc	"@\w\+"
syn match fermHook	"@hook" contains=fermHookTime

syn match  fermPort	"\<\:*\d\+\>"
syn match  fermIp4Addr	"\<\d\+\.\d\+\.\d\+\.\d\+\>"
syn match  fermHwAddr	"\<[[:alnum:]-:]\+\>"

syn match  fermChainUser "\<[[:upper:]]\+\>"

syn match fermVariable		"$[[:alnum:]_]\+"
syn match fermIpVariable	"$ip_[[:alnum:]_]\+"
syn match fermHwVariable	"$hw_[[:alnum:]_]\+"
syn cluster fermInterpDQ	contains=fermVariable,fermIpVariable,fermHwVariable,fermPort,fermIpAddr,fermHwAddr
syn region  fermShellCommand	matchgroup=fermMatchStartEnd start="`" end="`" contains=@fermInterpDQ

syn region fermStringUnexpanded matchgroup=fermStringStartEnd start="'" end="'"
syn region fermString		matchgroup=fermStringStartEnd start=+"+  end=+"+ contains=@fermInterpDQ
syn match  fermFunctionName	"&[[:alnum:]_]\+"

syn match  fermComment		"#.*" contains=fermTodo
syn match  fermSharpBang	"^#!.*"

if version >= 508 || !exists("did_ferm_syn_inits")
  if version < 508
    let did_ferm_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink fermPreProc		Statement
  HiLink fermLocation		Label
  HiLink fermProto		Number
  HiLink fermMatch		Statement
  HiLink fermTarget		Type
  HiLink fermArptables		Statement
  HiLink fermEbtables		Statement
  HiLink fermBuiltins		Type
  HiLink fermInclude		Statement
  HiLink fermHookTime		Statement
  HiLink fermTodo		Todo
  HiLink fermChain		Type
  HiLink fermChainUser		Special
  HiLink fermTable		Type
  HiLink fermHook		Statement
  HiLink fermVariable		Identifier
  HiLink fermIpVariable		Special
  HiLink fermHwVariable		Special
  HiLink fermShellCommand	String
  HiLink fermPort		Number
  HiLink fermIp4Addr		Number
  HiLink fermHwAddr		Number
  HiLink fermStringUnexpanded	String
  HiLink fermString		String
  HiLink fermFunctionName	Identifier
  HiLink fermComment		Comment
  HiLink fermSharpBang		Comment

  delcommand HiLink
endif

" Syncing to speed up processing
"
syn sync match fermSync	grouphere NONE "^$\I[[:alnum:]_:]+\s*=\s*{"
"syn sync match fermSync	grouphere NONE "^[@%]\I[[:alnum:]_:]+\s*=\s*("

syn sync maxlines=100

let b:current_syntax = "ferm"

" vim: ts=8
