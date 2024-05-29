return {
	'romgrk/barbar.nvim',
	dependencies = {
		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	},
	config = function()
		require("barbar").setup({})
		vim.keymap.set('n', '<leader>,,', '<Cmd>BufferPrevious<CR>', {})
		vim.keymap.set('n', '<leader>..', '<Cmd>BufferNext<CR>', {})
	end
}
