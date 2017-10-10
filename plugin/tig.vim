if exists("g:loaded_tig_plugin")
  finish
endif
let g:loaded_tig_plugin = 1

command! TigBlame call tig#blame()
command! TigFileHistory call tig#file_history()
command! TigLatestCommitForLine call tig#latest_commit_for_line()
