require("bufferline").setup {
  options = {
    mode = "buffers",
    themable = false,
    color_icons = true,
    show_close_icon = true,
    show_buffer_close_icons = true,
    always_show_bufferline = true,
    numbers = "ordinal",
    separator_style = "slant",
    indicator = { style = "none" },
    max_name_length = 48,
    max_prefix_length = 8,
    truncate_names = true,
    diagnostics = "nvim_lsp",
  },
}
