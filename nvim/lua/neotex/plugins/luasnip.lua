return {
  "L3MON4D3/LuaSnip",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("user.snips")

    require("luasnip.loaders.from_snipmate").load({ paths = "~/.config/nvim/snippets/" })
  end
}
