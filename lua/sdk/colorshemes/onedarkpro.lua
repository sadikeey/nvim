local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
	return
end

onedarkpro.setup({
	dark_theme = "onedark", -- The default dark theme
	light_theme = "onelight", -- The default light theme
	caching = true, -- Use caching for the theme?
	cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedarkpro/"), -- The path to the cache directory
	colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
	highlights = {}, -- Override default highlight and/or filetype groups
	filetypes = { -- Override which filetype highlight groups are loaded
		javascript = true,
		lua = true,
		markdown = true,
		php = true,
		python = true,
		ruby = true,
		rust = true,
		toml = true,
		typescript = true,
		typescriptreact = true,
		vue = true,
		yaml = true,
	},
	plugins = { -- Override which plugin highlight groups are loaded
		-- See the Supported Plugins section for a list of available plugins
	},
	styles = { -- Choose from "bold,italic,underline"
		types = "NONE", -- Style that is applied to types
		numbers = "NONE", -- Style that is applied to numbers
		strings = "NONE", -- Style that is applied to strings
		comments = "NONE", -- Style that is applied to comments
		keywords = "NONE", -- Style that is applied to keywords
		constants = "NONE", -- Style that is applied to constants
		functions = "NONE", -- Style that is applied to functions
		operators = "NONE", -- Style that is applied to operators
		variables = "NONE", -- Style that is applied to variables
		conditionals = "NONE", -- Style that is applied to conditionals
		virtual_text = "NONE", -- Style that is applied to virtual text
	},
	options = {
		bold = true, -- Use bold styles?
		italic = true, -- Use italic styles?
		underline = true, -- Use underline styles?
		undercurl = true, -- Use undercurl styles?

		cursorline = true, -- Use cursorline highlighting?
		transparency = false, -- Use a transparent background?
		terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
		window_unfocused_color = true, -- When the window is out of focus, change the normal background?
	},
})

function ToggleTheme()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end
