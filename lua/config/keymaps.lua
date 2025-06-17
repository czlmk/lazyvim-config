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

-- fzf keymaps
vim.keymap.set("n", "<leader>zgg", "<Cmd>lua require('fzf-lua').grep()<CR>", { noremap = true, desc = "FZF: grep" })
vim.keymap.set("n", "<leader>zgl", "<Cmd>lua require('fzf-lua').grep_last()<CR>", { noremap = true, desc = "FZF: grep last" })
vim.keymap.set("n", "<leader>zgw", "<Cmd>lua require('fzf-lua').grep_cword()<CR>", { noremap = true, desc = "FZF: grep word under cursor" })
vim.keymap.set("n", "<leader>zgW", "<Cmd>lua require('fzf-lua').grep_cWORD()<CR>", { noremap = true, desc = "FZF: grep WORD under cursor" })
vim.keymap.set("n", "<leader>zgp", "<Cmd>lua require('fzf-lua').grep_project()<CR>", { noremap = true, desc = "FZF: grep project" })
vim.keymap.set("n", "<leader>zgc", "<Cmd>lua require('fzf-lua').grep_curbuf()<CR>", { noremap = true, desc = "FZF: grep current buffer" })
vim.keymap.set("n", "<leader>zgq", "<Cmd>lua require('fzf-lua').grep_quickfix()<CR>", { noremap = true, desc = "FZF: grep quickfix" })
vim.keymap.set("n", "<leader>zgl", "<Cmd>lua require('fzf-lua').grep_loclist()<CR>", { noremap = true, desc = "FZF: grep loclist" })

vim.keymap.set("n", "<leader>zlc", "<Cmd>lua require('fzf-lua').lgrep_curbuf()<CR>", { noremap = true, desc = "FZF: live grep curbuf" })
vim.keymap.set("n", "<leader>zlq", "<Cmd>lua require('fzf-lua').lgrep_quickfix()<CR>", { noremap = true, desc = "FZF: live grep quickfix" })
vim.keymap.set("n", "<leader>zll", "<Cmd>lua require('fzf-lua').lgrep_loclist()<CR>", { noremap = true, desc = "FZF: live grep loclist" })
vim.keymap.set("n", "<leader>zlg", "<Cmd>lua require('fzf-lua').live_grep()<CR>", { noremap = true, desc = "FZF: live grep" })
vim.keymap.set("n", "<leader>zlr", "<Cmd>lua require('fzf-lua').live_grep_resume()<CR>", { noremap = true, desc = "FZF: live grep resume" })
vim.keymap.set("n", "<leader>zlgg", "<Cmd>lua require('fzf-lua').live_grep_glob()<CR>", { noremap = true, desc = "FZF: live grep glob" })
vim.keymap.set("n", "<leader>zln", "<Cmd>lua require('fzf-lua').live_grep_native()<CR>", { noremap = true, desc = "FZF: live grep native" })

vim.keymap.set({ "n", "v" }, "<leader>zgv", "<Cmd>lua require('fzf-lua').grep_visual()<CR>", { noremap = true, desc = "FZF: grep visual" })
