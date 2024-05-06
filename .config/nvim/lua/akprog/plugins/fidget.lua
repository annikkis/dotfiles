require("fidget").setup({
  notification = {
    window = {
      relative = "editor",
      align = "bottom",
      border = "none",
      winblend = 100,
      zindex = 50,
    },
  },
  progress = {
    display = {
      progress_icon = { pattern = "dots", period = 1 },
      done_icon = ICON_COMMON.check,
    },
  },
  -- integration = {
  --   ["nvim-tree"] = {
  --     enable = true,
  --   },
  -- },
})
