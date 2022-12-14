vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'gruvbox-community/gruvbox'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use { 'neoclide/coc.nvim', branch = 'release' }
	use { 
		'iamcco/markdown-preview.nvim',
		run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		ft = { "markdown" }
	}
	use {
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup {} end
	}
	use 'nvim-tree/nvim-tree.lua'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

end)
