local opts = { noremap = true, silent = true }

local map = vim.keymap.set

vim.g.mapleader = " "

map("i", "jk", "<ESC>l")

-- Center buffer when move half up/down
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Center buffer when move to prev/next occurence
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- TODO: check what it is
map("x", "<leader>p", [["_dP]])

-- Join next line and preserve cursor
-- map("n", "J", "mzJ`z")

-- WTF
-- map("n", "Q", "<nop>")
-- map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
