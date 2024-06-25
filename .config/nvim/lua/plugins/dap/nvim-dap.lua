local dap = require("dap")
vim.fn.sign_define("DapBreakpoint", {text = "⊚", texthl = "TodoFgFIX", linehl = "", numhl = ""})
local dap_config = {
    php = require("plugins.dap.php"),
}

for dap_name, dap_options in pairs(dap_config) do
    dap.adapters[dap_name] = dap_options.adapters
    dap.configurations[dap_name] = dap_options.configurations
end

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
map("n", "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {})
map("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>",{})
map("n", "<F6>", "<cmd>lua require'dap'.step_into()<CR>", {})
map("n", "<F7>", "<cmd>lua require'dap'.step_over()<CR>", {})
map("n", "<F8>", "<cmd>lua require'dap'.step_out()<CR>", {})
map("n", "<F3>", "<cmd>lua require'dap'.run_last()<CR>", {})
map(
    "n",
    "<F12>",
    "<cmd>lua require'dap'.close()<CR><cmd>lua require'dap.repl'.close()<CR><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<CR>",{})

