vim.g.mapleader = " "

-- ========================
-- 🧭 General Keymaps
-- ========================

vim.keymap.set("n", "<leader>a", "ggVG") -- Select all
vim.keymap.set("n", "<Esc>", ":noh<CR>") -- Remove search highlighting
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>") -- Quit all
vim.keymap.set("v", "<C-r>", '"hy:%s/<C-r>h//g<left><left>') -- Replace selected text

-- Center cursor during navigation
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Clipboard & delete
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Formatting
vim.keymap.set("n", "<leader>cf", "<cmd>LspZeroFormat<CR>", { desc = "Format code" })

-- ========================
-- 🪟 Window & Split Management
-- ========================

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Create splits
vim.keymap.set("n", "|", "<CMD>vsp<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "_", "<CMD>sp<CR>", { desc = "Horizontal Split" })

-- ========================
-- 🔌 Plugin Keymaps
-- ========================

-- NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Floaterm
vim.keymap.set("n", "<leader>tn", ":FloatermNew<CR>", { desc = "New terminal" })
vim.keymap.set("n", "<C-/>", ":FloatermToggle<CR>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<C-/>", "<C-\\><C-N>:FloatermToggle<CR>")
vim.keymap.set("t", "<C-Left>", "<C-\\><C-N>:FloatermPrev<CR>")
vim.keymap.set("t", "<C-Right>", "<C-\\><C-N>:FloatermNext<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>") -- Exit terminal mode

-- Barbar (buffer management)
vim.keymap.set("n", "<S-h>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-l>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-x>", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<S-z>", "<Cmd>BufferCloseAllButCurrent<CR>", { desc = "Close all but current" })
