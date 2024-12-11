return {
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		config = function()
			require("bufferline").setup({
				options = {
					offsets = {
						{
							filetype = "neo-tree",
							text = "NeoTree",
							highlight = "Directory",
							text_align = "left",
						},
					},
				},
				highlights = {
					buffer_selected = { italic = false, bold = false },
				},
			})
		end,
	},
}
