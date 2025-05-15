-- TODO LIST
-- - realias 'code [file | directory]' to open Neovim
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "


--vim.cmd("set showmatch")     -- set show matching parenthesis
--vim.cmd("set ignorecase")    -- ignore case when searching
--vim.cmd("set smartcase")     -- ignore case if search pattern is all lowercase, case-sensitive otherwise
----vim.cmd("set visualbell")           -- don't beep
----vim.cmd("set noerrorbells")         -- don't beep
--vim.cmd("set title")                -- change the terminal's title
vim.cmd("set history=1000")         -- remember more commands and search history
vim.cmd("set undolevels=1000")      -- use many muchos levels of undo
--vim.cmd("set hlsearch")      -- highlight search terms
--vim.cmd("set incsearch")     -- show search matches as you type
vim.cmd("set number")        -- show line numbers
----set bg=light      -- set background/color scheme brightness. ex: light and dark
--vim.cmd("set scrolloff=10")   -- Makes scrolling down suck less
----set paste         -- Always have pasting on
----set pastetoggle=<F7> -- Toggle paste on/off with key
--vim.cmd("set backspace=2")   -- Make backspace work like most other apps
--vim.cmd("tab all")           -- Show tabs for all files opened at once
--vim.cmd("set termguicolors")
--vim.cmd("nmap te <Esc>:tabe |")


-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local plugins = {
    {
      'sainnhe/gruvbox-material',
      name = "gruvbox-material",
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme('gruvbox-material')
      end
    },
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
local opts = {}

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
    plugins
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})


local builtin = require("telescope.builtin")

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

--require("gruvbox-material").setup()

--require("gruvbox-material").setup()
--vim.cmd.colorscheme "gruvbox-material"

-- OS CLIPBOARD --
vim.keymap.set('', '<leader>y', '"+y', 'Yank to clipboard')
vim.keymap.set('n', '<leader>p', '"+p', 'Paste after cursor from clipboard')

