vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

require("tokyonight").setup({
    transparent = true,
})

vim.cmd("colorscheme tokyonight")

-- vim.cmd[[colorscheme nord]]
-- vim.g.nord_disable_background = false

