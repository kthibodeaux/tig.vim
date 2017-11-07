tig.vim
=======

This plugin exposes some [tig][] features to vim.

By default tig is opened in a tmux vertical split by default.  To change this to a horizontal split, add the following to your `.vimrc`:

```
let g:tig_tmux_command = "tmux split-window"
```

Usage
-----

For the default bindings, add the following to your `.vimrc`:

```
nmap <leader>c <Plug>TigFileHistory
nmap <leader>b <Plug>TigBlame
nmap <leader>y <Plug>TigLatestCommitForLine
```

[tig]: https://github.com/jonas/tig
