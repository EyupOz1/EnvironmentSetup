local M = {}


function M.applySettings()
	if vim.fn.has("wsl") == 1 then
		vim.g.clipboard = {
			name = "WslClipboard",
			copy = {
				["+"] = "clip.exe",
				["*"] = "clip.exe",
			},
			paste = {
				["+"] =
				'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
				["*"] =
				'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			},
			cache_enabled = 0,
		}
	end

	vim.wo.signcolumn = "yes"

	vim.cmd("set nowrap")
	vim.cmd("set number")
	vim.cmd("set relativenumber")
end

return M
