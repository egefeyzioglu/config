local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	"arduino_language_server",
	"pkgbuild_language_server",
	"clangd",
	"cmake",
	"quick_lint_js",
	"ltex",
	"marksman",
	"powershell_es",
	"pyre",
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
