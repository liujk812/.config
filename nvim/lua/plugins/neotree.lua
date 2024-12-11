return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				window = {
					position = "left",
					width = 30,
				},
			})
			vim.keymap.set("n", "<leader>ft", "<cmd>Neotree toggle<cr>", { desc = "Neotree" })
		end,
	},
}
