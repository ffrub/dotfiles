local m = require("finn.keymap")
local nnoremap = m.nnoremap
local inoremap = m.inoremap
-- open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

inoremap("jh", "<Esc>")
