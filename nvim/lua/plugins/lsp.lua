return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig",
		},
		config = function()
			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- "lua_ls",
					-- "clangd",
					-- "pylsp",
					-- "html",
				},
			})
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").clangd.setup({})
			require("lspconfig").pylsp.setup({})
			require("lspconfig").html.setup({})
		end,
	},
}
