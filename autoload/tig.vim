if exists("g:loaded_tig")
  finish
endif
let g:loaded_tig = 1

if !exists("g:tig_command")
  let g:tig_command = "tig"
endif

if !exists("g:tig_tmux_command")
  let g:tig_tmux_command = "tmux split-window -h"
endif

function tig#blame()
  let l:line = line(".")
  let l:file = expand("%")
  let l:tig_command = g:tig_command . " blame -CCC +" . l:line . " " . l:file
  let l:tmux_command = "!" . g:tig_tmux_command . " " . l:tig_command

  silent execute l:tmux_command
endfunction

function tig#file_history()
  let l:file = expand("%")
  let l:tig_command = g:tig_command . " --follow " . l:file
  let l:tmux_command = "!" . g:tig_tmux_command . " " . l:tig_command

  silent execute l:tmux_command
endfunction

function tig#latest_commit_for_line()
  let l:line = line(".")
  let l:file = expand("%")
  let l:sha = system("git blame --root " . l:file . " -L" . l:line . "," . l:line . " \| cut -f 1 -d' '")
  let l:tig_command = g:tig_command . " show " . l:sha
  let l:tmux_command = "!" . g:tig_tmux_command . " " . l:tig_command

  silent execute l:tmux_command
endfunction
