vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.softtabstop = 6
vim.opt.expandtab = true
vim.opt.shiftwidth = 6
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.cursorline = true

vim.keymap.set("n", "wh", "<C-w>h")
vim.keymap.set("n", "wj", "<C-w>j")
vim.keymap.set("n", "wk", "<C-w>k")
vim.keymap.set("n", "wl", "<C-w>l")

vim.keymap.set("n", "tc", ":tabe ")
vim.keymap.set("n", "tn", ":tabn<cr>")
vim.keymap.set("n", "tp", ":tabp<cr>")

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 3

vim.opt.list = true
vim.opt.listchars:append("space:·")

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
plug("sindrets/diffview.nvim")
plug("David-Kunz/gen.nvim")

vim.call("plug#end")

require("plugins/telescope")
require("plugins/treesitter")
require("plugins/gruvbox")
require("plugins/lsp")
require("plugins/gen")
