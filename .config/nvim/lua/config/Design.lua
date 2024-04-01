return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- Lua
			require("lualine").setup({
				options = {
					theme = "tokyonight",
				},
				sections = {
					lualine_x = { "vim.fn.getcwd()" },
				},
			})
		end,
	},
}
