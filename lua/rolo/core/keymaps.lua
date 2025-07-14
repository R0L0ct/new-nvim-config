vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
--[[ keymap.set("n", "<leader>pv", vim.cmd.Ex) ]]
keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })

keymap.set(
	"n",
	"<leader>bq",
	":lua require('rolo.utils.buffers').close_other_buffers()<CR>",
	{ noremap = true, silent = true }
)

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Terminal
local opts = { noremap = true, silent = true }
keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true }) -- Salir de la term

-- Moverse entre splits en modo term
keymap.set("t", "<M-h>", [[<C-\><C-n><C-w>h]], opts)
keymap.set("t", "<M-j>", [[<C-\><C-n><C-w>j]], opts)
keymap.set("t", "<M-k>", [[<C-\><C-n><C-w>k]], opts)
keymap.set("t", "<M-l>", [[<C-\><C-n><C-w>l]], opts)

-- Scroll
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
