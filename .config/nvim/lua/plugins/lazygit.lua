return {
   "kdheepak/lazygit.nvim",
   requires = {
       "nvim-lua/plenary.nvim",
    },
    config = function()
        require("lazy").setup({
            cmd = {
                "LazyGit",
                "LazyGitConfig",
                "LazyGitCurrentFile",
                "LazyGitFilter",
                "LazyGitFilterCurrentFile",
            }
        })
    end
}
