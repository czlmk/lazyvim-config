-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
local opts = { noremap = true }

-- Terminal mode: Alt + hjkl to move between windows
vim.keymap.set('t', '<A-h>', [[<C-\><C-N><C-w>h]], opts)
vim.keymap.set('t', '<A-j>', [[<C-\><C-N><C-w>j]], opts)
vim.keymap.set('t', '<A-k>', [[<C-\><C-N><C-w>k]], opts)
vim.keymap.set('t', '<A-l>', [[<C-\><C-N><C-w>l]], opts)

-- Insert mode: Alt + hjkl to move between windows
vim.keymap.set('i', '<A-h>', [[<C-\><C-N><C-w>h]], opts)
vim.keymap.set('i', '<A-j>', [[<C-\><C-N><C-w>j]], opts)
vim.keymap.set('i', '<A-k>', [[<C-\><C-N><C-w>k]], opts)
vim.keymap.set('i', '<A-l>', [[<C-\><C-N><C-w>l]], opts)

-- Normal mode: Alt + hjkl to move between windows
vim.keymap.set('n', '<A-h>', '<C-w>h', opts)
vim.keymap.set('n', '<A-j>', '<C-w>j', opts)
vim.keymap.set('n', '<A-k>', '<C-w>k', opts)
vim.keymap.set('n', '<A-l>', '<C-w>l', opts)
-- Remap + and - to resize window height (like <C-w>+ and <C-w>-)
vim.keymap.set('n', '=', '<C-w>+', { noremap = true, desc = 'Increase window height' })
vim.keymap.set('n', '-', '<C-w>-', { noremap = true, desc = 'Decrease window height' })
vim.keymap.set('n', '_', '<C-w><', { noremap = true, desc = 'Decrease window width' })
vim.keymap.set('n', '+', '<C-w>>', { noremap = true, desc = 'Increase window width' })
vim.keymap.set('n', '<leader>wr', '<cmd>SessionSearch<CR>', { noremap = true, desc = 'Session search' })
vim.keymap.set('n', '<leader>ws', '<cmd>SessionSave<CR>', { noremap = true, desc = 'Save session' })
vim.keymap.set('n', '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', { noremap = true, desc = 'Toggle autosave' })
vim.keymap.set("n", "<C-p>", "<Cmd>lua require('fzf-lua').files()<CR>", { noremap = true, desc = "FZF: Find Files" })
