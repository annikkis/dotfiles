local servers = {
  tsserver = {},
  jsonls = {},
  html = {
    init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = { css = true, javascript = true },
      provideFormatter = true,
    },
  },
  cssls = {},
  eslint = {},
  prismals = {},
  lua_ls = {
    settings = {
      Lua = {
        runtime = { version = "LuaJIT" },
        workspace = { checkThirdParty = false },
        diagnostics = { enable = true, globals = { "vim" } },
        telemetry = { enable = false },
      },
    },
  },
}

local on_attach = function(_, bufnr)
  local keymap = vim.keymap.set
  local lsp_buf = vim.lsp.buf

  local function opts(desc)
    return { desc = "lsp: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
  keymap("n", "ca", lsp_buf.code_action, opts("[c]ode [a]action"))
  keymap("n", "gd", lsp_buf.definition, opts("[g]oto [d]efinition"))
  keymap("n", "gt", lsp_buf.type_definition, opts("[g]oto [t]ype definition"))
  keymap("n", "gi", lsp_buf.implementation, opts("[g]oto [i]mplementation"))
  keymap('n', 'gr', lsp_buf.references, opts("[g]oto [r]eferences"))
  keymap("n", "gD", lsp_buf.declaration, opts("[g]oto [D]eclaration]"))
  keymap("n", "<leader>s", lsp_buf.signature_help, opts("open [s]ignature help"))
  keymap("n", "<leader>h", lsp_buf.hover, opts("open hover documentation"))
  keymap("n", "<leader>r", lsp_buf.rename, opts('[r]ename'))
  keymap("n", "<leader>f", function() lsp_buf.format { async = true } end, opts("[f]ormat buffer"))
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
for name, config in pairs(servers) do
  require("lspconfig")[name].setup(vim.tbl_extend("force", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = { debounce_text_changes = 150 },
  }, config))
end
