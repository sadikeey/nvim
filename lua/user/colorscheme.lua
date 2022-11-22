require "user.colorshemes.gruvbox-material"

vim.cmd ( "autocmd SourcePost * highlight Normal ctermbg=NONE guibg=NONE" )

local status_ok, _ = pcall(vim.cmd, "colorscheme gruvbox-material")
if not status_ok then
  print( "Colorscheme not found !" )
	return
end
