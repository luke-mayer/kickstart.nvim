-- Key Remaps

-- TMUX remappings
vim.g.tmux_navigator_no_mappings = 1
vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Makes <C-d> and <C-u> center the cursor on the page when used.
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- Makes <n> and <N> center the cursor on the page when used.
vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open diagnostic on current line' })

-- Control size of window splits
vim.keymap.set('n', '<c-w>,', '<c-w>5<')
vim.keymap.set('n', '<c-w>.', '<c-w>5>')

--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--

-- Makes it easier to quit terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

--
-- terminal mappings
vim.keymap.set('n', '<space>st', function()
  vim.cmd.vnew()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 15)
  vim.cmd.term()
  vim.cmd.normal 'i'
end)
