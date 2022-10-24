local colorscheme = "onedark"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- -- For gruvbox-material
-- vim.cmd([[
--   let g:gruvbox_material_background = 'hard'
--   let g:gruvbox_material_better_performance = 1
--   let g:gruvbox_material_transparent_background = 1
--   let g:gruvbox_material_ui_contrast = 'high'
-- ]])
--
-- -- For gruvbox
-- vim.cmd([[
--     let g:gruvbox_contrast_dark = 'hard'
--     let g:gruvbox_transparent_bg = 1
--     autocmd SourcePost * highlight Normal ctermbg=NONE guibg=NONE
--     highlight LineNr ctermbg=NONE guibg=NONE
--     highlight SignColumn ctermbg=NONE guibg=NONE
-- ]])
