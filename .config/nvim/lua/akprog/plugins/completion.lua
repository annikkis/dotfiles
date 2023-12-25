local cmp = require("cmp")
local luasnip = require("luasnip")
local icons_kind = {
  Class = " ",
  Color = " ",
  Constant = " ",
  Constructor = " ",
  Enum = " ",
  EnumMember = " ",
  Event = " ",
  Field = " ",
  File = " ",
  Folder = " ",
  Function = "󰡱 ",
  Interface = " ",
  Keyword = " ",
  Method = " ",
  Module = " ",
  Operator = " ",
  Property = " ",
  Reference = " ",
  Snippet = " ",
  Struct = " ",
  Text = " ",
  TypeParameter = " ",
  Variable = " ",
}
local icons_menu = {
  nvim_lsp = "[NLSP]",
  buffer = "[BUFF]",
  path = "[PATH]",
  luasnip = "[SNIP]",
}

luasnip.config.setup {}
cmp.setup {
  mapping = cmp.mapping.preset.insert {
    ["<c-space>"] = cmp.mapping.complete(),
    ["<esc>"] = cmp.mapping.abort(),
    ["<cr>"] = cmp.mapping.confirm { select = true, behavior = cmp.ConfirmBehavior.Replace },
    ["<c-d>"] = cmp.mapping.scroll_docs(4),
    ["<c-u>"] = cmp.mapping.scroll_docs(-4),
    ["<down>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<up>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  -- completion = { autocomplete = false },
  window = {
    completion = {
      border = "none",
      side_padding = 1,
      col_offset = -4,
      scrolloff = 8,
    },
    documentation = {
      border = "none",
    },
  },
  formatting = {
    fields = { "abbr", "kind", "menu" },
    expandable_indicator = true,
    format = function(entry, item)
      item.menu = icons_menu[entry.source.name] or ""
      item.kind = (icons_kind[item.kind] or "") .. item.kind
      return item
    end,
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "path",    keyword_length = 2 },
    { name = "luasnip", keyword_length = 3 },
  }
}
