local plugins = {
	--lsp stuff
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lsp")
		end,
	},

	{
		"williamboman/mason.nvim",
		config = function()
			require("plugins.configs.mason")
		end,
	},

	--cmp stuff
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = function()
			require("plugins.configs.cmp")
		end,
		dependencies = {
			{
				"L3MON4D3/luasnip",
			},

			--Autopairs
			{
				"windwp/nvim-autopairs",
				config = function ()
					require("plugins.configs.other").autopairs()
				end,
			},

			--cmp sources
			{
				"saadparwaiz1/cmp_luasnip",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
			},
		},
	},

	--Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = function ()
			require("plugins.configs.treesitter")
		end,
	},

	--Files support
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			{
				"nvim-tree/nvim-web-devicons",
			},
		},
	},

	--Colourscheme
	{
		"catppuccin/nvim",
		name =  "catppuccin",
		priority = 1000,
		config = function ()
			vim.cmd.colorscheme "catppuccin"
		end,
	},
}

local options = require("plugins.configs.lazycfg")
require("lazy").setup(plugins,options)
