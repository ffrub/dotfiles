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

inoremap("jh", "<Esc>")

