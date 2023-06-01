require("telescope").setup {
  defaults = {
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
    selection_caret = " ",
    prompt_prefix = "",
  },
  pickers = {
    current_buffer_fuzzy_find = {
      layout_strategy = "vertical",
      previewer = false,
    },
  },
  extensions = {},
}

require("telescope").load_extension("fzf")
local telescope = require("telescope.builtin")
local keymap = vim.keymap.set

local function opts(desc)
  return { desc = "telescope: " .. desc, noremap = false, silent = true }
end

keymap("n", "<leader>e", telescope.find_files, opts("[e]xplore files"))
keymap("n", "<leader>o", telescope.oldfiles, opts("show recently [o]pened files"))
keymap("n", "<leader>b", telescope.buffers, opts("show [b]uffers"))
keymap("n", "<leader>w", telescope.grep_string, opts("search current [w]ord"))
keymap("n", "<leader>g", telescope.live_grep, opts("search by [g]rep"))
keymap("n", "<leader>h", telescope.help_tags, opts("show [h]elp"))
keymap("n", "<leader>d", telescope.diagnostics, opts("show [d]iagnostics"))
keymap("n", "<leader>c", telescope.current_buffer_fuzzy_find, opts("fuzzily search in [c]urrent buffer"))
