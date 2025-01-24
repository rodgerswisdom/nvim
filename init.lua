-- init.lua

-- Set leader key before anything else
vim.g.mapleader = " " -- Space as the leader key
vim.g.maplocalleader = " "

-- Add lazy.nvim to the runtime path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- Latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load the plugins from plugins.lua
require("lazy").setup("plugins")

-- General Neovim settings
vim.o.number = true -- Show line numbers
vim.o.relativenumber = true -- Relative line numbers
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.shiftwidth = 4 -- Indentation width
vim.o.tabstop = 4 -- Tab width
vim.o.smartindent = true -- Smart indentation
vim.o.termguicolors = true -- Enable true color support
vim.o.cursorline = true -- Highlight the current line
vim.o.hlsearch = true -- Highlight search results

-- Key mappings
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
