--TODO
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
					-- ... your lualine config
					theme = "tokyonight",
					-- ... your lualine config
				},
			})
		end,
	},
}
