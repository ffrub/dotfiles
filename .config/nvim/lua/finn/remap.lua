-- navigate vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- open netrw
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- copy file path
vim.keymap.set("n", "<leader>cp", "<cmd>let @*=expand('%')<CR>")

-- jump to pane
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- move pane
vim.keymap.set("n", "<C-w>j", "<C-w>J")
vim.keymap.set("n", "<C-w>k", "<C-w>K")
vim.keymap.set("n", "<C-w>h", "<C-w>H")
vim.keymap.set("n", "<C-w>l", "<C-w>L")

-- move line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- to void
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- find and replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[Search] Replace word under cursor" })

vim.keymap.set("n", "<C-m>", "<nop>")

-- tbd - get https://github.com/mbbill/undotree
-- vim.keymap.set("-", "<leader>u", ":UndotreeShow<CR>")
