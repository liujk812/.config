return {
	{
		"CRAG666/code_runner.nvim",
		lazy = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
			{ "<leader>rf", "<cmd>RunFile<cr>", desc = "Run File" },
			{ "<leader>rp", "<cmd>RunProject<cr>", desc = "Run Project" },
			{ "<leader>rd", "<cmd>RunClose<cr>", desc = "Run Close" },
		},
		opts = {
			mode = "float",
			focus = true,
			startinsert = false,
			term = {
				position = "bot",
				size = 8,
			},
			float = {
				close_key = "<ESC>",
				border = "single",

				-- Num from `0 - 1` for measurements
				height = 0.8,
				width = 0.8,
				x = 0.5,
				y = 0.5,

				border_hl = "FloatBorder",
				float_hl = "Normal",

				blend = 0,
			},
			filetype_path = "",
			filetype = {
				javascript = "node",
				java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
				c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
				cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
				python = "python3 -u",
				sh = "bash",
				rust = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
			},
			project_path = "",
			project = {},
		},
		ft = { "lua", "python", "c", "cpp" },
		-- config = {
		--   filetype = {
		--     python = "python3 -u",
		--   },
		--   mode = "term",
		--   float = {
		--     close_key = "q",
		--   },
		-- },
	},
}
