local M = {}

local setup = function()
	print("Setting up copyurl")
	local group = vim.api.nvim_create_augroup("reload_copyurl", { clear = true })
	vim.api.nvim_create_autocmd(
		"BufWritePost",
		{ pattern = "copyurl.lua", callback = require("copyurl.reload").reload_plugin, group = group }
	)
	vim.cmd("command! CopyUrl lua require('copyurl').copyurl()")
end
M.setup = setup
return M
