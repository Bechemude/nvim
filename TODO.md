TODO: outline and alternatives in telescope


https://github.com/Exafunction/codeium.nvim
https://github.com/monkoose/neocodeium

https://github.com/tzachar/highlight-undo.nvim

https://github.com/Aasim-A/scrollEOF.nvim


https://nanotipsforvim.prose.sh/neovim-as-ide


---------------------------------------

linter vs diagnostics?
formatter
hover
completion


'williamboman/mason.nvim'
"williamboman/mason-lspconfig.nvim"
'jay-babu/mason-null-ls.nvim'
'WhoIsSethDaniel/mason-tool-installer.nvim'

'nvimtools/none-ls.nvim'
null-ls.nvim
https://github.com/mfussenegger/nvim-lint

"zeioth/garbage-day.nvim"
"hinell/lsp-timeout.nvim"

'VonHeikemen/lsp-zero.nvim'
https://github.com/junnplus/lsp-setup.nvim






---------------------------
eslint vs tsserver

https://stackoverflow.com/questions/70097689/whats-the-difference-between-tsserver-and-eslint-as-a-linter

-------------------------------
conforn error example
E5108: Error executing lua: ....local/share/nvim/lazy/conform.nvim/lua/conform/init.lua:493: attempt to call upvalue 'callback' (a table value)
stack traceback:
	....local/share/nvim/lazy/conform.nvim/lua/conform/init.lua:493: in function 'cb'
	....local/share/nvim/lazy/conform.nvim/lua/conform/init.lua:510: in function 'run_cli_formatters'
	....local/share/nvim/lazy/conform.nvim/lua/conform/init.lua:539: in function 'format'
	/Users/a/.config/nvim/lua/plugins/conform.lua:28: in function </Users/a/.config/nvim/lua/plugins/conform.lua:27>

