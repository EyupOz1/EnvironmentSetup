return {

	dir = "~/nvimplugins/cheatsheet.nvim",
	config = function()
		vim.keymap.set("n", "<leader>abc", function()
			package.loaded["cheatsheet"] = nil
			require("cheatsheet")
		end)
	end,
}
