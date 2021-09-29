### VIM

`i` - enter insert mode  
`ESC` - exit insert mode into command mode  
`v` - enter visual mode  
`V` - enter visual line mode  
`^v` - enter visual block mode  
`:` - open ex command  


#### Movement
`h` - move left 1 character  
`l` - move right 1 character  
`j` - move down 1 line  
`k` - move up 1 line  
`w` - move forward 1 word  
`W` - move forward 1 word (not counting punctuation)  
`e` - move forward to the end of the next word  
`b` - move back 1 word  
`$` - move to the end of the line  
`0` - move to the beginning of the line  
`^` - move to the first non-whitespace character of the line  
`+` - move to first character of next line  
`-` - move to first character of previous line  
`[[` - move to previous code block  
`]]` - move to next code block  
`{{` - move to next empty line  
`}}` - move to previous empty line  
`H` - move to the highest line on the screen  
`M` - move to the middle line on the screen  
`L` - move to the lowest line on the screen  
`^d` - scroll down (half a page)  
`^u` - scroll up (half a page)  
`^y` - scroll up (one line)  
`^e` - scroll down (one line)  
`gg` - move to beginning of file  
`G` - move to the end of the file  
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
`s` - delete character and enter insert mode  
`a` - insert after the text cursor  
`A`- append to the end of the line  
`o` - insert a new line below the cursor  
`O` - insert a new line above the cursor  
`~` - toggle case  
`I` - move to the beginning of the line and enable insert mode  
`J` - join current and next line  
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
`U` - restore line to original state  
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


#### Marks
`m{x}` - Mark the current line, store it in the mark `x`  
`'{x}` - Go to the mark `x`  
`` `{x} `` - Go to the character that was marked by `x`  


#### Other
`:e {filename}` - open another file in the current buffer  
`:r {filename}` - read contents of file in the current buffer  
`^^` - Switching between files  
