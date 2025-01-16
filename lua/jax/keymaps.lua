-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- This is probably a N00b killer ;^)
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Map for nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeOpen<CR>", { noremap = true, silent = true, desc = "Show nvim-tree" })

-- Let's do w, wq, and q re-maps for convenience
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Write current buffer" })
vim.keymap.set(
	"n",
	"<leader>w!",
	":w!<CR>",
	{ noremap = true, silent = true, desc = "Force Write current buffer - be careful what you're about to doo!" }
)

vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
vim.keymap.set("n", "<leader>q!", ":q!<CR>", { noremap = true, silent = true, desc = "Force Close current buffer" })

vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true, desc = "Write and Close current buffer" })
vim.keymap.set(
	"n",
	"<leader>wq!",
	":wq!<CR>",
	{ noremap = true, silent = true, desc = "Force Write and Close current buffer" }
)
