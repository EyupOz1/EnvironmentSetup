return {

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
		"eandrju/cellular-automaton.nvim",
		dependencies = {
			"tamton-aquib/duck.nvim",
			"AndrewRadev/discotheque.vim",
			"seandewar/killersheep.nvim",
			{
				"NStefan002/2048.nvim",
				cmd = "Play2048",
			},
			"tamton-aquib/zone.nvim",
		},
		config = function()
			local funcs = {

				game_of_life = function()
					vim.cmd("CellularAutomaton game_of_life")
				end,

				make_it_rain = function()
					vim.cmd("CellularAutomaton make_it_rain")
				end,
				duck = function()
					require("duck").hatch()
				end,
				duck_off = function()
					require("duck").cook_all()
				end,
				disco = function()
					vim.cmd("Disco e")
				end,
				disco_off = function()
					vim.cmd("Disco")
				end,
				killersheep = function()
					require("killersheep").setup()
					vim.cmd("KillKillKill")
				end,
				_2048 = function()
					require("2048").setup()
					vim.cmd("Play2048")
				end,
				treadmill = function()
					-- require("zone").setup({ after = 1, style = "treadmill" })
				end,
			}

			local function random()
				local keyset = {}
				for k in pairs(funcs) do
					table.insert(keyset, k)
				end
				local random_func = keyset[math.random(#keyset)]

				funcs[random_func]()

				vim.notify(vim.inspect(random_func))
			end

			vim.keymap.set("n", "<leader>rnd", function()
				random()
			end)
		end,
	},
}
