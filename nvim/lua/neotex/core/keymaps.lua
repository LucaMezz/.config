local opts = { noremap = true, silent = tue }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-------------------- General Keymaps --------------------

-- Unmappings
keymap("n", "<C-z>", "<nop>", opts)
keymap("n", "gc", "<nop>", opts)
keymap("n", "gcc", "<nop>", opts)

-- Spelling
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>lua require('telescope.builtin').spell_suggest(require('telescope.themes').get_cursor({previewer = false, layout_config = {width = 50, height = 15}}))<CR>", opts)

-- Kill search highlights
keymap("n", "<CR>", "<cmd>noh<CR>", opts)

-- Find project files
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)

-- Toggle comments
keymap('n', '<C-Bslash>', '<Plug>(comment_toggle_linewise_current)', opts)
keymap('x', '<C-Bslash>', '<Plug>(comment_toggle_linewise_visual)', opts)

-- Open help on word
keymap("n", "<S-m>", ':execute "help " . expand("<cword>")<cr>', opts)

-- Fix 'Y', 'E'
keymap("n", "Y", "y$", opts)
keymap("n", "E", "ge", opts)
keymap("v", "Y", "y$", opts)

-- Center cursor
keymap("n", "m", "zt", opts)
keymap("v", "m", "zt", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-l>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)
keymap("n", "<BS>", ":BufferLineMoveNext<CR>", opts)
keymap("n", "<S-BS>", ":BufferLineMovePrev<CR>", opts)

-- Drag lines
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("v", "<A-j>", ":m'>+<CR>gv", opts)
keymap("v", "<A-k>", ":m-2<CR>gv", opts)

-- Horizontal line movements
keymap("n", "<c-u>", "<c-u>zz", opts)
keymap("n", "<c-d>", "<c-d>zz", opts)

-- Horizontal line movements
keymap("v", "<S-h>", "g^", opts)
keymap("v", "<S-l>", "g$", opts)
keymap("n", "<S-h>", "g^", opts)
keymap("n", "<S-l>", "g$", opts)

-- Indentation
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("n", "<", "<S-v><<esc>", opts)
keymap("n", ">", "<S-v>><esc>", opts)

-- Navigate display lines
keymap("n", "J", "gj", opts)
keymap("n", "K", "gk", opts)
keymap("v", "J", "gj", opts)
keymap("v", "K", "gk", opts)

