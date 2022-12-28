local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'bashls',
  'gopls',
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end

  nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
  nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

  nmap("gd", vim.lsp.buf.definition, '[G]o to [D]efinition')
  nmap("<leader>gd", vim.lsp.buf.type_definition, '[G]o to Type [D]efinition')
  nmap("gr", vim.lsp.buf.references, '[G]o to [R]eferences')
  nmap("gI", vim.lsp.buf.references, '[G]o to [I]mplementation')
  nmap("K", vim.lsp.buf.hover, '[K]eyword hover')
  nmap("<leader>e", vim.diagnostic.open_float, '[E]rror hover')
  nmap("[d", vim.diagnostic.goto_next, 'Next [d]iagnostic')
  nmap("]d", vim.diagnostic.goto_prev, 'Previous [d]iagnostic')
end)

local capabilities = vim.lsp.protocol.make_client_capabilities()
lsp.capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

lsp.set_preferences({
  sign_icons = {}
})


lsp.setup()
