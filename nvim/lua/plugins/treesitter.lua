require("nvim-treesitter.configs").setup({
      ensure_installed = {"rust", "python", "c", "json", "lua", "nasm", "html", "css", "c_sharp"},
      highlight = {
            enable = true,
      }
})
