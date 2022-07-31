local m = require("finn.keymap")
local nnoremap = m.nnoremap
local inoremap = m.inoremap

-- telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")

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


inoremap("jh", "<Esc>")

