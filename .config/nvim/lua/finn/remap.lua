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

-- open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

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

xnoremap("<leader>p", "\"_dP")

-- tbd - get https://github.com/mbbill/undotree
-- nnoremap("<leader>u", ":UndotreeShow<CR>")
