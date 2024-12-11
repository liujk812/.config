return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"romgrk/nvim-treesitter-context",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c",
					"cpp",
					"lua",
					--"python",
					--"html",
				},
				sync_install = false,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
			require("treesitter-context").setup({
				enable = true,
				throttle = true,
				max_lines = 0,
				patterns = {
					default = {
						"class",
						"function",
						"method",
					},
				},
			})
		end,
	},
}
