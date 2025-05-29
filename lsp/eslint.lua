local function get_workspace_folder()
  local root = vim.fn.getcwd()
  return {
    name = vim.fn.fnamemodify(root, ":t"),
    uri = vim.uri_from_fname(root),
  }
end

---@type vim.lsp.Config
return {
  cmd = { "vscode-eslint-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.jsx",
    "svelte",
  },
  root_markers = {
    "package.json",
    ".git",
    ".eslintrc",
    ".eslintrc.js",
    ".eslintrc.cjs",
    ".eslintrc.yaml",
    ".eslintrc.yml",
    ".eslintrc.json",
    "eslint.config.js",
    "eslint.config.mjs",
    "eslint.config.cjs",
    "eslint.config.ts",
    "eslint.config.mts",
    "eslint.config.cts",
  },
  --- See https://github.com/Microsoft/vscode-eslint#settings-options for documentation
  settings = {
    useESLintClass = false,
    quiet = false, -- Ignore warnings
    validate = "on",
    format = true,
    nodePath = "",
    codeActionsOnSave = {
      enable = false,
      mode = "all",
    },
    problems = {
      shortenToSingleLine = false,
    },
    experimental = {
      useFlatConfig = false,
    },
    onIgnoredFiles = "off",
    workingDirectory = { mode = "location" },
    workspaceFolder = get_workspace_folder(),
    codeAction = {
      disableRuleComment = {
        enable = true,
        location = 'separateLine',
      },
      showDocumentation = {
        enable = true,
      },
    },
  },
}
