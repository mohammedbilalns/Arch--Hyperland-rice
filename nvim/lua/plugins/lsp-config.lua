return {
	{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end
	},
	{
	 "williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls","texlab","bashls","pylsp", "gopls", "ltex", "clangd", "quick_lint_js"}	})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.texlab.setup({})
			lspconfig.bashls.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.gopls.setup({})
			lspconfig.ltex.setup({})
			lspconfig.clangd.setup({})
			lspconfig.quick_lint_js.setup({})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' },'<leader>ca', vim.lsp.buf.code_action, {})
		end

	}

}

