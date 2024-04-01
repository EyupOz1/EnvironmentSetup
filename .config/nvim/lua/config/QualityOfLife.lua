return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup({

				signs = false,
			})
			vim.keymap.set("n", "<leader>todo", ":TodoTrouble")
		end,
	},
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
