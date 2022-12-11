local colorsheme = "onedark"
require("sdk.colorshemes." .. colorsheme)

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorsheme)
if not status_ok then
	vim.notify("colorsheme " .. colorsheme .. "not found!")
	return
end
