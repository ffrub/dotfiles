require('nvim-treesitter.configs').setup {
    ensure_installed = { "javascript", "typescript", "go", "dockerfile" },
    highlight = { enable = true },
}

