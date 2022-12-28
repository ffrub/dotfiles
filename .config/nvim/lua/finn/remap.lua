local m = require("finn.keymap")
local nnoremap = m.nnoremap
local inoremap = m.inoremap
local vnoremap = m.vnoremap
local xnoremap = m.xnoremap

-- telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")

nnoremap("<leader>fs", "<cmd>Telescope git_status<CR>")
nnoremap("<leader>fl", "<cmd>Telescope git_commits<CR>")
nnoremap("<leader>fbl", "<cmd>Telescope git_bcommits<CR>")

-- navigate vertically
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- copy file path
nnoremap("<leader>cp", "<cmd>let @*=expand('%')<CR>")

-- jump to pane
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")

-- move pane
nnoremap("<C-w>j", "<C-w>J")
nnoremap("<C-w>k", "<C-w>K")
nnoremap("<C-w>h", "<C-w>H")
nnoremap("<C-w>l", "<C-w>L")

-- move line
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- to void
xnoremap("<leader>p", "\"_dP")
nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

-- copy to system clipboard
nnoremap("<leader>y", '"+y')
vnoremap("<leader>y", '"+y')
nnoremap("<leader>Y", '"+Y')

nnoremap("Q", "<nop>")
nnoremap("<leader>f", vim.lsp.buf.format)

-- find and replace word under cursor
nnoremap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- tbd - get https://github.com/mbbill/undotree
-- nnoremap("<leader>u", ":UndotreeShow<CR>")
