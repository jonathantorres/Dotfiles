### VIM

`i` - enter insert mode  
`I` - move to the beginning of the line and enable insert mode  
`ESC` - exit insert mode into command mode  
`v` - enter visual mode  
`:` - open ex command  


#### Movement
`h` - move left 1 character  
`l` - move right 1 character  
`j` - move down 1 line  
`k` - move up 1 line  
`w` - move forward 1 word  
`e` - move forward to the end of the next word  
`b` - move back 1 word  
`$` - move to the end of the line  
`0` - move to the beginning of the line  
`[[` - move to previous code block  
`]]` - move to next code block  
`{{` - move to next empty line  
`}}` - move to previous empty line  
`gg` - move to beginning of file  
`G` - move to the end of the file  
`1G` - move to first line of file  
`50G`- move to line 50 of the file  
`:50` - move to line 50 of the file  
`z.` - move screen with the current line on the center  
`f{c}` - find the character `c` in the current line  
`F{c}` - find the character `c` backwards in the current line  
`t{c}` - find the character before `c` in the current line  
`T{c}` - find the character before `c` backwards in the current line  
`;` - repeat the last find  
`,` - repeat the last find backwards  


#### Editing
`x` - delete character  
`a` - insert after the text cursor  
`A`- append to the end of the line  
`o` - insert a new line below the cursor  
`O` - insert a new line above the cursor  
`dd` - delete line  
`S` - delete line and enable insert mode  
`dw` - delete word  
`d$` - delete to the end of the line  
`D` - delete to the end of the line  
`diw` - delete inside word  
`di{` - delete inside curly brace, you can use any other characters  
`yy` - yank (copy) line  
`Y` - yank (copy) line  
`c` - change  
`C` - change the current line  
`r` - replace  
`R` - replace mode, replaces more than 1 character  
`p` - put  
`P` - put above  
`.` - repeat the last edit  
`u` - undo  
`^r` - redo  
`V` - Select the current line  
`gv` - Repeat the last selection  


#### Indentation
`<<` - indent current line to the left  
`>>` - indent current line to the right  
`<` - indent selection to the left  
`>` - indent selection to the right  
`==` - auto indent the current line  
`=` - auto indent the current selection  
`=i}` - auto indent inside the curly brace  


#### Search
`/pattern` - search for pattern  
`n` - repeat last search forward  
`N` - repeat last search backwards  
`%` - find matching parenthesis or bracket []{}  
`*` - search forward by the word in the cursor  
`#` - search backwards by the word in the cursor  


#### Buffers
`:ls` - list buffers  
`:buf {num}` - Switch to the buffer with the number {num}  
`:b <TAB>` - Keep pressing tabs to see the buffer names  
`:b <name>` - Switch to the buffer by name  
`:bn` - Switch to the next buffer  
`:bp` - Switch to the previous buffer  
`:bd [num, name]` - Unload the buffer, it also removes it from the buffer list  


#### Windows
`:split` - split current buffer horizontally  
`:vsplit` - split current buffer vertically  
`:new` - split a new buffer horizontally  
`:vnew` - split a new buffer vertically  
`^ww` - switch between windows  
`^w=` - resize windows equally  
`:tabnew {filename}` - open a new tab with the specified file  
`gt` - switch between tabs  


#### Other
`:e {filename}` - open another file in the current buffer  
`:r {filename}` - read contents of file in the current buffer  
`^^` - Switching between files  
