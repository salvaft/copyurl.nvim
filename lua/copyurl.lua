local M = {}

M.copyurl = function()
	print("Copying URL")
	-- <cmd>let @+ = expand('<cfile>')<CR>"
	local current_file = vim.fn.expand("<cfile>")
	vim.fn.setreg("+", current_file)
end
return M
