# My Neovim Setup For Development.


## Install Neovim 0.8

You can install Neovim with your package manager e.g. brew, apt, pacman etc.. but remember that when you update your packages Neovim may be upgraded to a newer version.

If you would like to make sure Neovim only updates when you want it to than I recommend installing from source:

**NOTE** Verify the required [build prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites) for your system.

```sh
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout release-0.8
make CMAKE_BUILD_TYPE=Release
sudo make install
```

## Install the config

Make sure to remove or move your current `nvim` directory

```sh
git clone https://github.com/sadikeey/nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim)

**NOTE** Checkout this file for some predefined keymaps: [keymaps](https://github.com/sadikeey/nvim/blob/master/lua/user/keymaps.lua)

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

## Fonts

I recommend using the following repo to get a "Nerd Font" (Font that supports icons)

[getnf](https://github.com/ronniedroid/getnf)

## Configuration

### LSP

To add a new LSP

First Enter:

```
:Mason
```

and press `i` on the Language Server you wish to install

Next you will need to add the server to this list: [servers](https://github.com/sadikeey/nvim/blob/lua/user/lsp/mason.lua)

Note: Builtin LSP doesn't contain all lsps from [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md).

If you want to install any from there, for example terraform_lsp(which adds more functionality than terraformls, like complete resource listing),

1. You can add the lsp name in [mason lsp block](https://github.com/sadikeey/nvim/blob/lua/user/lsp/mason.lua)

```lua
-- lua/usr/lsp/mason.lua
local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
  "terraform_lsp" -- New LSP
}
```

2. Manually install the binary of the lsp and put it in your path by downloading the binary or through your package manager. For terraform_lsp [example](https://github.com/juliosueiras/terraform-lsp/releases)


### Formatters and linters

Make sure the formatter or linter is installed and add it to this setup function: [null-ls](https://github.com/sadikeey/nvim/blob/8b9ec3bffe8c8577042baf07c75408532a733fea/lua/user/lsp/null-ls.lua)

**NOTE** Some are already setup as examples, remove them if you want

### Plugins

You can install new plugins here: [plugins](https://github.com/sadikeey/nvim/blob/lua/user/plugins.lua)

---

## Plugins

- [packer](https://github.com/wbthomason/packer.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [vim-bbye](https://github.com/moll/vim-bbye)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [darkplus.nvim](https://github.com/LunarVim/darkplus.nvim)
- [nvim-colorizer](https://github.com/NvChad/nvim-colorizer.lua)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [DAPInstall.nvim](https://github.com/ravenxrz/DAPInstall.nvim)
