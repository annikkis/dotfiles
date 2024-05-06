local keymap = vim.keymap.set

local function opts(desc)
  return { desc = desc, noremap = false, silent = true }
end

-- functional keys
keymap({ "n", "i" }, "<f10>", "<esc><cmd>quitall<cr>", opts("quit all"))
-- windows
keymap("n", "<m-left>", "<cmd>wincmd h<cr>", opts(""))
keymap("n", "<m-down>", "<cmd>wincmd j<cr>", opts(""))
keymap("n", "<m-up>", "<cmd>wincmd k<cr>", opts(""))
keymap("n", "<m-right>", "<cmd>wincmd l<cr>", opts(""))
keymap("n", "<m-h>", "<cmd>wincmd h<cr>", opts(""))
keymap("n", "<m-j>", "<cmd>wincmd j<cr>", opts(""))
keymap("n", "<m-k>", "<cmd>wincmd k<cr>", opts(""))
keymap("n", "<m-l>", "<cmd>wincmd l<cr>", opts(""))
keymap("n", "<m-w>", "<cmd>wincmd w<cr>", opts(""))
keymap("n", "<m-=>", "<cmd>wincmd =<cr>", opts(""))
keymap("n", "<m-+>", "<cmd>horizontal resize +2<cr>", opts("horizontal resize '+' window"))
keymap("n", "<m-->", "<cmd>horizontal resize -2<cr>", opts("horizontal resize '-' window"))
keymap("n", "<m-]>", "<cmd>vertical resize +2<cr>", opts("vertical resize '+' window"))
keymap("n", "<m-[>", "<cmd>vertical resize -2<cr>", opts("vertical resize '-' window"))
keymap("n", "<m-v>", "<cmd>vsplit<cr>", opts("[v]ertical split"))
keymap("n", "<m-s>", "<cmd>split<cr>", opts("horizontal [s]plit"))
keymap("n", "<m-n>", "<cmd>new<cr>", opts("[n]ew window"))
keymap("n", "<m-e>", "<cmd>NvimTreeToggle<cr>", opts("toggle tree [e]xplorer"))
keymap("n", "<m-q>", "<cmd>quit<cr>", opts("[q]uit buffer"))
-- buffers
keymap("n", "<c-right>", "<cmd>bnext<cr>", opts("next buffer"))
keymap("n", "<c-left>", "<cmd>bprevious<cr>", opts("prev buffer"))
keymap("n", "<c-k>", "<cmd>bnext<cr>", opts("next buffer"))
keymap("n", "<c-j>", "<cmd>bprevious<cr>", opts("prev buffer"))
keymap({ "n", "i" }, "<c-s>", "<cmd>write<cr>", opts("[s]ave buffer"))
keymap({ "n", "i" }, "<c-q>", "<esc><cmd>bdelete<cr>", opts(""))
-- line edit
keymap({ "n", "i" }, "<s-up>", "<cmd>move .-2<cr>", opts("move line up"))
keymap({ "n", "i" }, "<s-down>", "<cmd>move .+1<cr>", opts("move line down"))
keymap("v", "<s-up>", ":move '<-2<cr>gv", opts("move block up"))
keymap("v", "<s-down>", ":move '>+1<cr>gv", opts("move block down"))
keymap("n", "<tab>", ">>", opts("tab line"))
keymap("n", ">", ">>", opts("tab line"))
keymap("n", "<", "<<", opts("shift line left"))
keymap("v", "<tab>", ">gv", opts("tab block"))
keymap("v", ">", ">gv", opts("tab block"))
keymap("v", "<", "<gv", opts("shift block left"))
-- navigation
keymap({"i", "v"}, "<c-h>", "<left>", opts("move left"))
keymap({"i", "v"}, "<c-j>", "<down>", opts("move down"))
keymap({"i", "v"}, "<c-k>", "<up>", opts("move up"))
keymap({"i", "v"}, "<c-l>", "<right>", opts("move right"))
keymap({ "n", "v" }, "<home>", "^", opts("home"))
keymap({ "n", "v" }, "<end>", "g_", opts("end"))
keymap({ "n", "v" }, "<s-home>", "0", opts("begin"))
keymap({ "n", "v" }, "<s-end>", "$", opts("end"))
-- packets
keymap("n", "<leader>p", "<cmd>Lazy<cr>", opts("open [p]ackage manager lazy"))
keymap("n", "<leader>m", "<cmd>Mason<cr>", opts("open [m]ason"))
-- clipboard
keymap("n", "<leader>a", "gg<s-v>G", opts("select all"))
-- keymap("v", "p", "_p", opts("[p]ut the text after the cursor"))
-- keymap("v", "P", "_P", opts("[P]ut the text before the cursor"))
-- highlighting
keymap("n", "<leader>n", "<cmd>nohlsearch<cr>", opts("[n]o highlight"))
-- diagnostic
keymap("n", "<m-i>", "<cmd>TroubleToggle<cr>", opts("toggle trouble"))
keymap("n", "<leader>i", vim.diagnostic.open_float, opts("show trouble"))
-- increment / decrement
keymap("n", "+", "<c-a>", opts("increment"))
keymap("n", "-", "<c-x>", opts("decrement"))
-- multiple cursor
keymap({"n", "i"}, "<c-down>", "<cmd>MultipleCursorsAddDown<cr>", opts(""))
keymap("n", "<c-j>", "<cmd>MultipleCursorsAddDown<cr>", opts(""))
keymap({"n", "i"}, "<c-up>", "<cmd>MultipleCursorsAddUp<cr>", opts(""))
keymap("n", "<c-k>", "<cmd>MultipleCursorsAddUp<cr>", opts(""))
keymap({"n", "i"}, "<c-leftmouse>", "<cmd>MultipleCursorsMouseAddDelete<cr>", opts(""))


-- navigate within insert mode

-- "n", "yy"                - Yank lines.
-- "v", "y"                 - Yank the highlighted text.
-- "v", "Y"                 - Yank the highlighted lines.
-- "v", "yz"                - Yank the highlighted text. Trailing whitespace at the end of each line of a selected block won't be yanked.
-- "n", "p"                 - Put the text after the cursor
-- "n", "P"                 - Put the text before the cursor
-- "n", "zp"                - Like "p" and "P", except without adding trailing spaces when pasting a block. Thus the inserted text will not always be a rectangle.
-- "n", "cc"                - Delete lines and start insert linewise. If 'autoindent' is on, preserve the indent of the first line.
-- "n", "C"                 - Delete from the cursor position to the end of the line, and start insert.
-- "n", "s"                 - Delete characters and start insert (s stands for Substitute).
-- "n", "S"                 - Delete lines and start insert. Synonym for "cc" linewise.
-- "n", "<del> or x"        - Delete characters under the cursor.
-- "n", "X"                 - Delete characters before the cursor.
-- "n", "dd"                - Delete lines.
-- "n", "D"                 - Delete the characters under the cursor until the end of the line.
-- "v", "<del> or x or d"   - Delete the highlighted text.
-- "v", "X or D"            - Delete the highlighted lines.
-- "n" or "v", "Y"          - Join lines, with a minimum of two lines.
-- "n", "R"                 - Enter Replace mode.
