" Syntax highlighting for text/ls script tags
syn include @htmlLiveScript syntax/ls.vim
syn region liveScript start=#<script [^>]*type="text/ls"[^>]*>#ms=s+1 end=#</script>#me=s-1 contains=@htmlLiveScript,htmlTag,htmlEndTag,htmlScriptTag,@htmlPreproc keepend
