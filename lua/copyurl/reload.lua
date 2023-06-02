local M = {}
local function reload_plugin()
	-- Unload the plugin module
	package.loaded["copyurl"] = nil
	-- Require and load the updated version of the plugin
	require("copyurl")
	print("copyurl reloaded")
end

M.reload_plugin = reload_plugin

return M
