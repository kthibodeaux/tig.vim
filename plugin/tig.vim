if exists("g:loaded_tig_plugin")
  finish
endif
let g:loaded_tig_plugin = 1

nmap <Plug>TigBlame :call tig#blame()<CR>
nmap <Plug>TigFileHistory :call tig#file_history()<CR>
nmap <Plug>TigLatestCommitForLine :call tig#latest_commit_for_line()<CR>
