# How to vim like a nerd, Basics
First clone git@github.com:neovim/neovim.git and build it

Nvim configuration lives at XDG_CONFIG_HOME, defaults to ~/.config/nvim/
Change it with:
```bash
export NVIM_APPNAME=$HOME/projects/learn_vim/nvim_basics
nvim
```

Vim is a modal editor. 3 modes you care about
- Insert -> type stuff, like a normal text editor
- Normal -> mode to move around, delete copy and move text, most common mode
- Visual -> select things
- COMMAND -> give editor commands like save, exit and much more

You start in NORMAL mode. From any mode you can return to it using
<C-c> <ESC> <C-[>

Most magic happens in normal mode, using vim commands.
A vim command consists of:

[action][motion]
action is the action you want to perform
motion indicates what to perform it over

Examples:
cl -> delete left char and enter insert mode
dj -> delete current line and the one below
y% -> yank to the next matching bracket

Both the action and the motion take an optional count
3dw -> delete 3 words
y2b -> copy 2 words backward

The motion takes an optional modifier
ciw -> change IN the word
dap -> delete AROUND the paragraph

## Basics of the basics
Basic editor commands
:e -> open a new buffer (view of file)
:w -> save current buffer
:q -> close current buffer, window or tab (exits if last)
:q! -> buffer not saved? quit anyway
:qa -> close everything and quit
:wqa! -> save, then GFTO

When you mess up:
u     -> undo last change
<C-r> -> redo last undo

(neo)vim is very configurable, you can change below to anything you want

## Actions
The most useful ones

d -> delete
c -> change (delete + insert)
y -> copy (yank)
p -> paste (after cursor)
x -> delete char on cursor
r -> replace char on cursor

D -> delete from cursor to end of line
C -> same but change
Y -> same but yank
P -> paste before cursor

dd -> delete line
cc -> change line
yy -> yank line

a -> start insert mode after cursor (add)
i -> start insert mode before cursor
A -> start insert mode at end of line
I -> start insert mode at first non whitespace character

v     -> start VISUAL mode
V     -> start VISUAL LINE mode
<C-v> -> start VISUAL BLOCK mode

## Motions

- Move single chars with h j k l or arrow keys (don't)

◄  ▼  ▲  ▶
h  j  k  l

- w move a word
                                ▼
    <template Typename T> void meme(T&& cont) { ... }
                                   ▼
    <template Typename T> void meme(T&& cont) { ... }

- W move a WORD
The WORD motion is a word + non-whitespace characters like . () {} <> - !@#$%^&*
                                ▼
    <template Typename T> void meme(T&& cont) { ... }
                                        ▼
    <template Typename T> void meme(T&& cont) { ... }

- b, or B move back a word (or WORD)

- e or E move to the end of a word (or WORD)

### Horizontal movement
How I move around a line.
- f[char] Move to the first matching char on a line
f&    ▼
    <template Typename T> void meme(T&& cont) { ... }
                                     ▼
    <template Typename T> void meme(T&& cont) { ... }

- t[char] Move before the first matching char on a line
t&    ▼
    <template Typename T> void meme(T&& cont) { ... }
                                    ▼
    <template Typename T> void meme(T&& cont) { ... }


- F is f but backwards
- T is t but backwards

- ; moves to next hit
- , moves back

- ^ moves to start of line
- $ moves to end of line
- | moves to first non-whitespace char of line
- 77| moves to char #77 on the line

- gM moves to middle of line
- 75gM moves to 75% of line

### Vertical movement
How I move to the right line

- <C-d> move half a page down
- <C-u> move half a page up

- ] move a paragraph down
- [ move a paragraph up

I mapped these to <A-j> & <A-k>
-- map("n", "<A-j>", "g'}", { desc = "paragraph jump  w/o jumplist" })

Often I just search for the right position
- /[query]<CR>
Searches the file for query and moves to the first hit after the cursor. Wraps
if EOF reached.

- n and N move to next and previous hit
- ? searched backwards

## Plugins you want
Basic vim misses some features. Sometimes there is more modern methods to do
stuff, this is where some real nerd magic happens.

### Comments
-- "echasnovski/mini.comment"
-- "tpope/vim-commentary"

gc action
gc motion

gcip -> comment the paragraph
gcc  -> comment line
gcgc -> uncomment the comment block around cursor

### Surround
-- "kylechui/nvim-surround"

Actions
ys -> surround next text object
cs -> change surrounding pair
ds -> delete surrounding pair

ysiw"              ▼
std::string name = max
                   ▼
std::string name = "max"
cs"b               ▼
std::string name = (max)
dsb                ▼
std::string name = max

You can define your own pairs and aliases

## Registers

## Macros

## Marks
m[a-z] - mark cursor position in given mark
'a     - jump to mark a

m[A-Z] - mark that persists between files

### Special marks
 ' ➜ Back to line in current buffer where jumped from
 " ➜ Last exited current buffer
 [ ➜ To beginning of previously changed or yanked text
 ] ➜ To end of previously changed or yanked text
 ^ ➜ Last position of cursor in insert mode
 . ➜ Last change in current buffer
 < ➜ To beginning of last visual selection
 > ➜ To end of last visual selection
 0 ➜ In last file edited


