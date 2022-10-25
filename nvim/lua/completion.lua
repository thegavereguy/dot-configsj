
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require('lspkind')
local luasnip = require('luasnip')

if cmp ~= nil then
cmp.setup({
	snippet = {
 		expand = function(args)
   		luasnip.lsp_expand(args.body) -- For `luasnip` users.
  	end,
	},
	mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

		["<Tab>"] = cmp.mapping(function(fallback) 			-- navigazione campi  snippet
			if luasnip.expand_or_locally_jumpable() then
     	   luasnip.expand_or_jump()
     	 elseif has_words_before() then 			-- togliere questo se da fastitidio mettere TAB dopo un testo
     	   cmp.complete()
     	 else
     	   fallback()
     	 end
    end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback) 		-- stessa roba ma al contrario
   	 if luasnip.jumpable(-1) then
   	   luasnip.jump(-1)
   	 else
   	   fallback()
   	 end
   	end, { "i", "s" }),
    }),
window = {
	 completion = cmp.config.window.bordered(),
	 documentation = cmp.config.window.bordered(),
},

sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  { name = 'luasnip' }, -- For luasnip users.
	{ name = 'omni' }
}
),
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			mode = "symbol_text",
			menu = {
				omni= "[OMNI]",
				nvim_lsp = "[LSP]",
				luasnip = "[LUASNIP]"
			}
		})
	},

})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
sources = {
  { name = 'buffer' }
}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
sources = cmp.config.sources({
  { name = 'path' }
}, {
  { name = 'cmdline' }
})
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['sumneko_lua'].setup {
    capabilities = capabilities,
		settings= require("lsp.settings.sumneko_lua")
  }

 -- require('lspconfig')['clangd'].setup{}

end

