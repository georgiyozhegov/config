require("nvim-treesitter.configs").setup({
      ensure_installed = {"rust", "python", "c", "json", "lua", "nasm", "html", "css"},
      highlight = {
            enable = true,
      }
})
