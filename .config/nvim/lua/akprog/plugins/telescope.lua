require("telescope").setup {
  defaults = {
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    mappings = {
      i = {
        ["<c-u>"] = "preview_scrolling_up",
        ["<c-d>"] = "preview_scrolling_down",
      },
    },
    layout_config = {
      horizontal = {
        width = 0.75,
        height = 0.5,
      },
      vertical = {
        width = 0.5,
        height = 0.5,
      },
    },
    file_ignore_patterns = { "^.git/" },
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    winblend = 0,
    selection_caret = ICON_COMMON.chevron_right.." ",
    prompt_prefix = " "..ICON_COMMON.search.."  ",
  },
  pickers = {
    current_buffer_fuzzy_find = {
      layout_strategy = "vertical",
      previewer = false,
    },
  },
  extensions_list = { "fzf" },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
}

require("telescope").load_extension("fzf")
local telescope = require("telescope.builtin")
local keymap = vim.keymap.set

local function opts(desc)
  return { desc = "telescope: " .. desc, noremap = false, silent = true }
end

keymap("n", "te", telescope.find_files, opts("[e]xplore files"))
keymap("n", "to", telescope.oldfiles, opts("show recently [o]pened files"))
keymap("n", "tb", telescope.buffers, opts("show [b]uffers"))
keymap("n", "tw", telescope.grep_string, opts("search current [w]ord"))
keymap("n", "tg", telescope.live_grep, opts("search by [g]rep"))
keymap("n", "th", telescope.help_tags, opts("show [h]elp"))
keymap("n", "td", telescope.diagnostics, opts("show [d]iagnostics"))
keymap("n", "tc", telescope.current_buffer_fuzzy_find, opts("fuzzily search in [c]urrent buffer"))
