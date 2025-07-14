return {
	"hrsh7th/nvim-cmp",
	opts = function(_, opts)
		opts.sources = opts.sources or {}
		table.insert(opts.sources, {
			name = "lazydev",
			group_index = 0, -- set group index to 0 to skip loading LuaLS completions
		})
	end,
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-cmdline",
		"petertriho/cmp-git",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"windwp/nvim-autopairs",
	},
	event = "VeryLazy",
	main = "rolo.config.plugins.cmp",
	config = true,
}
