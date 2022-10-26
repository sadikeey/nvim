require('jaq-nvim').setup{
  cmds = {
    -- Uses vim commands
    internal = {
      lua = "luafile %",
      vim = "source %"
    },

    -- Uses shell commands
    external = {
      markdown = "glow %",
      python   = "python3 %",
      go       = "go run %",
      sh       = "sh %",
      c        = "gcc $file -o $fileBase.out; ./$fileBase.out",
      cpp      = "g++ $file -o $fileBase.out; ./$fileBase.out",
      java     = "javac $file; java $fileBase",
    }
  },

  behavior = {
    -- Default type
    default     = "terminal",

    -- Start in insert mode
    startinsert = true,

    -- Use `wincmd p` on startup
    wincmd      = false,

    -- Auto-save files
    autosave    = true
  },

  ui = {
    float = {
      -- See ':h nvim_open_win'
      border    = "single",

      -- See ':h winhl'
      winhl     = "Normal",
      borderhl  = "FloatBorder",

      -- See ':h winblend'
      winblend  = 0,

      -- Num from `0-1` for measurements
      height    = 0.8,
      width     = 0.8,
      x         = 0.5,
      y         = 0.5
    },

    terminal = {
      -- Window position
      position = "bot",

      -- Window size
      size     = 15,

      -- Disable line numbers
      line_no  = false
    },

    quickfix = {
      -- Window position
      position = "bot",

      -- Window size
      size     = 10
    }
  }
}
