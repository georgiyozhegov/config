local completion = require("cmp")

completion.setup({
      mapping = completion.mapping.preset.insert({
            ["<C-u>"] = completion.mapping.scroll_docs(-4),
            ["<C-d>"] = completion.mapping.scroll_docs(4),
            ["<cr>"] = completion.mapping.confirm({select = true})
      }),
      sources = completion.config.sources({
            {name = "nvim_lsp"},
      })
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local config = require("lspconfig")

config.rust_analyzer.setup({capabilities = capabilities})
config.lua_ls.setup({capabilities = capabilities})
config.pylsp.setup({capabilities = capabilities})
