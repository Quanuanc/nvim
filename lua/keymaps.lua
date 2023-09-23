local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

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

-- Buffer barbar.nvim
keymap("n", "<C-S-h>", ":BufferPrevious<CR>", opts)
keymap("n", "<C-S-l>", ":BufferNext<CR>", opts)
keymap("n", "<leader>w", ":BufferClose<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- NeooTree
keymap("n", "<leader>e", ":Neotree toggle<cr>", opts)
keymap("n", "<leader>s", ":Neotree reveal<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fw", ":Telescope live_grep<cr>", opts)
keymap("n", "<M-e>", ":Telescope buffers<cr>", opts)

-- Git
keymap("n", "<leader>ga", ":Gitsigns blame_line<cr>", opts)
keymap("n", "<leader>gd", ":Gitsigns diffthis<cr>", opts)
keymap("n", "]g", ":Gitsigns next_hunk<cr>", opts)
keymap("n", "[g", ":Gitsigns prev_hunk<cr>", opts)

-- Lsp
keymap("n", "<leader>ma", ":Mason<cr>", opts)
keymap("n", "<leader>n", ":ASToggle<CR>", opts) -- auto save toggle
keymap("n", "==", ":GuardFmt<cr>", opts)

--
keymap("n", "<ESC>", ":noh<CR>", opts)
keymap("i", "<C-a>", "<Home>", opts)
keymap("i", "<C-e>", "<End>", opts)
keymap("n", "yY", "^y$", opts)

-- edit
keymap("n", "cx", "<cmd>lua require('substitute.exchange').operator()<CR>", opts)
keymap("n", "cxx", "<cmd>lua require('substitute.exchange').line()<CR>", opts)
keymap("v", "cx", "<cmd>lua require('substitute.exchange').visual()<CR>", opts)