vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.softtabstop = 6
vim.opt.expandtab = true
vim.opt.shiftwidth = 6
vim.opt.smartindent = true

vim.opt.hlsearch = false

vim.keymap.set("n", "s", "^_")
vim.keymap.set("n", "e", "g_")

vim.keymap.set("n", "wh", "<C-w>h")
vim.keymap.set("n", "wj", "<C-w>j")
vim.keymap.set("n", "wk", "<C-w>k")
vim.keymap.set("n", "wl", "<C-w>l")

vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")

local plug = vim.fn["plug#"]

vim.call("plug#begin")

plug("nvim-lua/plenary.nvim")
plug("nvim-telescope/telescope.nvim")
plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
plug("ellisonleao/gruvbox.nvim")
plug("neovim/nvim-lspconfig")
plug("hrsh7th/cmp-nvim-lsp")
plug("hrsh7th/nvim-cmp")
plug("dcampos/cmp-snippy")
plug("dcampos/nvim-snippy")

vim.call("plug#end")

require("plugins/telescope")
require("plugins/treesitter")
require("plugins/gruvbox")
require("plugins/lsp")
