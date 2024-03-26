require("telescope").setup({
      pickers = {
            find_files = {
                  theme = "dropdown"
            },
            commands = {
                  theme = "dropdown"
            },
            live_grep = {
                  theme = "dropdown"
            }
      }
})

vim.keymap.set("n", "f", ":Telescope find_files<cr>")
vim.keymap.set("n", "c", ":Telescope commands<cr>")
vim.keymap.set("n", "s", ":Telescope live_grep<cr>")

