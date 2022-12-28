require('nvim-treesitter.configs').setup {
  ensure_installed = { 'javascript', 'typescript', 'go', 'dockerfile', 'help', 'lua' },
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-,>',
      node_incremental = '<c-,>',
      scope_incremental = '<c-;>',
      node_decremental = '<c-.>',
    },
  },
  textobjects = {
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        [']m'] = '@function.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
      },
    },
  },
}

