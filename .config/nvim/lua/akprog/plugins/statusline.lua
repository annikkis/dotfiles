require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = "auto",
    section_separators = {},
    component_separators = { left = "│", right = "│" },
    disabled_filetypes = {
      statusline = { "NvimTree" },
      winbar = {},
    },
    ignore_focus = { "NvimTree" },
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      "diff",
      {
        "diagnostics",
        symbols = {
          information = ICON_DIAGNOSTIC.inform,
          hint = ICON_DIAGNOSTIC.hint,
          warning = ICON_DIAGNOSTIC.warning,
          error = ICON_DIAGNOSTIC.error,
          other = ICON_DIAGNOSTIC.other,
        }
      },
    },
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
