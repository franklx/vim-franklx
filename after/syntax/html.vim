" Syntax highlighting for text/ls script tags
syn include @htmlLiveScript syntax/ls.vim
syn region liveScript start=#<script [^>]*type="text/ls"[^>]*># end=#</script>#me=s-1 keepend contains=@htmlLiveScript,htmlScriptTag,@htmlPreproc containedin=htmlHead
