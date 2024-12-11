return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				lsp = {
					progress = {
						enabled = false,
					},
				},
				presets = {
					bottom_search = false,
					command_palette = true,
					long_message_to_split = true,
					inc_rename = false,
					lsp_doc_border = true,
				},
				messages = {
					enabled = true,
					view = "notify",
					view_error = "notify",
					view_warn = "notify",
					view_history = "messages",
					view_search = "virtualtext",
				},
				health = {
					checker = false,
				},
			})
			require("notify").setup({
				-- "fade", "slide", "fade_in_slide_out", "static"
				stages = "fade",
				on_open = nil,
				on_close = nil,
				timeout = 1000,
				fps = 30,
				render = "default",
				background_colour = "normal",
				level = "TRACE",
			})
		end,
	},
}
