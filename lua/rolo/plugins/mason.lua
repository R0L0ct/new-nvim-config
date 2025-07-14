return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup()

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"emmet_ls",
				"prismals",
				"pyright",
				"bashls",
				"angularls",
				"rust_analyzer",
			},
			automatic_installation = true,
            automatic_enable = false
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"black",
				"isort",
				"pylint",
				"eslint_d",
				"clang-format",
				"cpplint",
			},
		})
	end,
}
