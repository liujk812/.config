return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "moon",
				light_style = "day",
				transparent = false,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = false },
					functions = {},
					variables = {},
					-- Background styles. "dark", "transparent" or "normal"
					sidebars = "dark",
					floats = "dark",
				},
				day_brightness = 0.3,
				dim_inactive = false,
				lualine_bold = true,
			})
			vim.cmd([[colorscheme tokyonight-moon]])
		end,
	},
}
