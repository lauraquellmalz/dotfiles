return {
    {
        "nvim-neotest/nvim-nio"
    },
    {
		"mfussenegger/nvim-dap",
		config = function()
			require("plugins.dap.nvim-dap")
		end
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		requires = {
			"mfussenegger/nvim-dap"
		},
		config = function()
			require("plugins.dap.nvim-dap-virtual-text")
		end
	},
	{
		"rcarriga/nvim-dap-ui",
		requires = {
			"mfussenegger/nvim-dap"
		},
		config = function()
			require("plugins.dap.nvim-dap-ui")
		end
	}
}
