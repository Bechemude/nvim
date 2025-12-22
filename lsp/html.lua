---@type vim.lsp.Config
return {
  -- Command to start the LSP
  cmd = { "vscode-html-language-server", "--stdio" },
  -- Filetypes to automatically attach to.
  filetypes = { "html", "htmlangular", "jsx", "tsx" },
  single_file_support = true,
  init_options = {
    provideFormatter = false,
    embeddedLanguages = { css = true, javascript = true },
    configurationSection = { "html", "css", "javascript" },
  },
  -- Sets the "root directory" to the parent directory of the file in th
  -- current buffer that contains the given files. Files that share a
  -- root directory will reuse the connection to the same LSP server.
  -- root_markers = {},
  -- Specific settings to send to the server. The schema for this is
  -- defined by the server.
  -- settings = {}
}
