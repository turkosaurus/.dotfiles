-- Line wrapping options
vim.keymap.set("", "<leader>lw", function()
    local wrap_enabled = vim.wo.wrap
    vim.wo.wrap = not wrap_enabled
    vim.wo.linebreak = not wrap_enabled
end, { desc = "[L]ine [W]rap toggle" })

-- Line relative number shortcut
vim.keymap.set("", "<leader>lr", function()
    local relativenumber_enabled = vim.wo.relativenumber
    vim.wo.relativenumber = not relativenumber_enabled
    vim.wo.number = true
end, { desc = "[L]ine [R]elative Numbers" })

-- Diagnostic keymaps
vim.keymap.set(
    "n",
    "<leader>q",
    vim.diagnostic.setloclist,
    { desc = "Open diagnostic [Q]uickfix list" }
)

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set(
    "t",
    "<C-\\><C-n>",
    "<Esc><Esc>",
    { desc = "Exit terminal mode" }
)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {
    desc = "Exit terminal insert mode",
    noremap = true,
    silent = true,
})

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
