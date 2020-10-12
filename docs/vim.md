###VIM

`i` - enter insert mode
`ESC` - exit insert mode into command mode
`v` - enter visual mode
`:` - open ex command


####Movement
`h` - move left 1 character
`l` - move right 1 character
`j` - move down 1 line
`k` - move up 1 line
`w` - move forward 1 word
`b` - move back 1 word
`$` - move to the end of the line
`0` - move to the beginning of the line
`[[` - move to previous code block
`]]` - move to next code block
`gg` - move to beginning of file
`G` - move to the end of the file
`1G` - move to first line of file
`50G`- move to line 50 of the file
`:50` - move to line 50 of the file
`z.` - move screen with the current line on the center
`<` - indent to the left
`>` - indent to the right


####Editing
`dd` - delete line
`yy` - yank (copy) line
`p` - put
`u` - undo
`^r` - redo


####Search
`/pattern` - search for pattern
`n` - repeat last search


####Windows
`:split` - split current buffer horizontally
`:vsplit` - split current buffer vertically
`:new` - split a new buffer horizontally
`:vnew` - split a new buffer vertically
`^ww` - switch between windows
`^w=` - resize windows equally
`:tabnew {filename}` - open a new tab with the specified file
`gt` - switch between tabs


####Other
`:e {filename}` - open another file in the current buffer
`:r {filename}` - read contents of file in the current buffer
`^^` - Switching between files
`:ls` - list buffers
