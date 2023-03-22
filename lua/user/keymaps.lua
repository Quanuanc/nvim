local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<ESC>", ":noh<CR>", opts)

-- Buffer barbar.nvim
keymap("n", "H", ":BufferPrevious<CR>", opts)
keymap("n", "L", ":BufferNext<CR>", opts)
keymap("n", "<leader>q", ":BufferClose<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- NeooTree
keymap("n", "<leader>e", ":Neotree toggle<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fw", ":Telescope live_grep<cr>", opts)

-- Git
keymap("n", "<leader>ga", ":Gitsigns blame_line<cr>", opts)

-- Lsp
keymap("n", "<leader>li", ":LspInfo<cr>", opts)
keymap("n", "<leader>ma", ":Mason<cr>", opts)
