require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map('n', '<leader>cm', ':w<CR>:!g++ % -o %:r && ./%:r<CR>', { noremap = true, silent = false, desc = 'compiles c++ program and executes it.'})
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map({'n', 'v'}, '<C-c>', '"+y')
map({'n', 'v'}, '<C-v>', '"+p')
map('n', '<C-a>', 'ggVG', {desc='select all text'})
map('n', '<leader>ac', 'ggVG"+yG', {desc='copy all to clipboard'})
map('n', '<leader>ad', 'ggVGd', {desc='delete all in file'})
map('v', '<Tab>', '>gv', {desc='increase indent by 1 level'})
map('v', '<S-Tab>', '<gv', {desc='decrese indent by 1 level'})
map('n', '<leader>qa', ':qa<CR>', {desc="quit nvim"})
map('i', '<C-v>', '<C-r>+', {desc="paste from clipboard in insert mode"})
map('n', '<Leader>r', ':%s/<C-r><C-w>//g<Left><Left>', { desc = 'Replace word under cursor' })
map('n', '<Leader>n', ':set relativenumber!<CR>', { desc = 'Toggle relative line numbers' })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
