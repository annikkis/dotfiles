local tree_api = require("nvim-tree.api")

local function on_attach(bufnr)
  local keymap = vim.keymap.set
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  keymap("n", "<tab>", tree_api.node.open.preview, opts("open: preview"))
  keymap("n", "<cr>", tree_api.node.open.edit, opts("open"))
  keymap("n", "<bs>", tree_api.node.navigate.parent_close, opts("close directory"))
  keymap("n", "<m-.>", tree_api.tree.change_root_to_node, opts("change root"))
  keymap("n", "<m-,>", tree_api.tree.change_root_to_parent, opts("up root"))
  keymap("n", "<m-v>", tree_api.node.open.vertical, opts("open: vertical split"))
  keymap("n", "<m-s>", tree_api.node.open.horizontal, opts("open: horizontal split"))
  keymap("n", "i", tree_api.node.show_info_popup, opts("[i]nform"))
  keymap("n", "a", tree_api.fs.create, opts("[a]dd new file"))
  keymap("n", "R", tree_api.fs.rename_sub, opts("[R]ename: omit name"))
  keymap("n", "r", tree_api.fs.rename, opts("[r]ename"))
  keymap("n", "d", tree_api.fs.remove, opts("[d]elete"))
  keymap("n", "c", tree_api.fs.copy.node, opts("[c]opy"))
  keymap("n", "x", tree_api.fs.cut, opts("cut"))
  keymap("n", "p", tree_api.fs.paste, opts("[p]aste"))
  keymap("n", "y", tree_api.fs.copy.relative_path, opts("cop[y] full name"))
  keymap("n", "F", tree_api.live_filter.clear, opts("clear [F]ilter"))
  keymap("n", "f", tree_api.live_filter.start, opts("add [f]ilter"))
  keymap("n", "h", tree_api.tree.toggle_help, opts("[h]elp"))
  keymap("n", "<2-LeftMouse>", tree_api.node.open.edit, opts("open"))
end

require("nvim-tree").setup {
  on_attach = on_attach,
  auto_reload_on_write = true,
  disable_netrw = true,
  sort_by = "case_sensitive",
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    side = "right",
    width = 48,
    number = false,
    adaptive_size = false,
    preserve_window_proportions = true,
  },
  renderer = {
    root_folder_label = true,
    group_empty = false,
    indent_width = 2,
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = { corner = "└", edge = "│", item = "├", bottom = "─", none = " " },
    },
    highlight_opened_files = "all",
    highlight_modified = "all",
    icons = {
      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  filters = {
    dotfiles = false,
    custom = { "^.git$", "^node_modules$" },
  },
  modified = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = false
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = false,
    debounce_delay = 50,
    icons = {
      info = ICON_DIAGNOSTIC.inform,
      hint = ICON_DIAGNOSTIC.hint,
      warning = ICON_DIAGNOSTIC.warning,
      error = ICON_DIAGNOSTIC.error,
    },
  },
  filesystem_watchers = { enable = true },
  git = { enable = true, ignore = true },
}

local function open_nvim_tree(data)
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
  local directory = vim.fn.isdirectory(data.file) == 1
  if not no_name and not directory then
    return
  end
  if directory then
    vim.cmd.cd(data.file)
  end

  tree_api.tree.open()
end

vim.api.nvim_create_autocmd("VimEnter", { callback = open_nvim_tree })
