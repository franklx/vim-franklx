if exists("b:current_syntax")
   let s:pre_save_cur_syn = b:current_syntax
endif

unlet b:current_syntax
syn include @htmlLiveScript syntax/ls.vim
syn region liveScript start=#<script [^>]*type="text/ls"[^>]*>#ms=s+1 end=#</script>#me=s-1 contains=@htmlLiveScript,htmlTag,htmlEndTag,htmlScriptTag,@htmlPreproc keepend

unlet b:current_syntax
syn include @htmlSass syntax/sass.vim
syn region sassStyle start=+<style [^>]*type *=[^>]*text/sass[^>]*>+ keepend end=+</style>+ contains=@htmlSass,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc containedin=htmlHead

unlet b:current_syntax
syn include @htmlScss syntax/scss.vim
syn region scssStyle start=+<style [^>]*type *=[^>]*text/scss[^>]*>+ keepend end=+</style>+ contains=@htmlScss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc containedin=htmlHead

if exists("s:pre_save_cur_syn")
   let b:current_syntax = s:pre_save_cur_syn
endif
