local completion = require("cmp")

local icons = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "",
      Variable = "",
      Class = "",
      Interface = "",
      Module = "",
      Property = "",
      Unit = "",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = ""
}

completion.setup({
      mapping = completion.mapping.preset.insert({
            ["<C-u>"] = completion.mapping.scroll_docs(-4),
            ["<C-d>"] = completion.mapping.scroll_docs(4),
            ["<cr>"] = completion.mapping.confirm({select = true})
      }),
      snippet = {
            expand = function(args)
                 require("snippy").expand_snippet(args.body)
            end
      },
      sources = completion.config.sources({
            {name = "nvim_lsp"},
            {name = "snippy"},
            {name = "buffer"}
      }),
      formatting = {
            format = function(_, item)
                  item.kind = (icons[item.kind] .. " " or "") .. item.kind
                  return item
            end
      },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local config = require("lspconfig")

config.rust_analyzer.setup({capabilities = capabilities})
config.lua_ls.setup({capabilities = capabilities})
config.pylsp.setup({capabilities = capabilities})
