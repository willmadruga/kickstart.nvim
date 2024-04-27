--  See `:help vim.keymap.set()`

-- Why press shift when I don't need to...
vim.keymap.set('n', ';', ':', { desc = 'Command' })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Ask AI
vim.keymap.set({ 'n', 'v' }, '<leader>cc', ':Gen<CR>')

-- Obsidian integration
vim.keymap.set({ 'n' }, '<leader>o#', ':ObsidianTags<CR>')
vim.keymap.set({ 'n' }, '<leader>on', ':ObsidianNew<CR>')
vim.keymap.set({ 'n' }, '<leader>or', ':ObsidianSearch<CR>')
vim.keymap.set({ 'n' }, '<leader>os', ':ObsidianQuickSwitch<CR>')
vim.keymap.set({ 'n' }, '<leader>ot', ':ObsidianToday<CR>')
vim.keymap.set({ 'n' }, '<leader>oT', ':ObsidianTomorrow<CR>')
vim.keymap.set({ 'n' }, '<leader>oy', ':ObsidianYesterday<CR>')

-- vim: ts=2 sts=2 sw=2 et
