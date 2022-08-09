local tsserver = require'lspconfig'.tsserver
local gopls = require'lspconfig'.gopls

local function default_key_maps()
    return function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gr", vim.lsp.buf.references, {buffer=0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
        
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})

        vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})

        vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", {buffer=0})
    end
end

tsserver.setup{
    on_attach = default_key_maps()
}

gopls.setup{
    on_attach = default_key_maps()
}

local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require'luasnip'.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lua' },

        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer', keyword_length = 5 },
    }),
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
})


cmp.setup.cmdline(':', {
    sources = {
        name = 'cmdline'
    }
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

tsserver.setup {
    capabilities = capabilities
}

