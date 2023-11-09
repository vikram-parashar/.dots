vim.g.mapleader = " "

vim.keymap.set("n", "<leader>a", "ggVG") -- select all
vim.keymap.set("n", "<Esc>", ":noh<Cr>") -- remove highlighting
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>") -- quit all
vim.keymap.set("n", ";", ":FineCmdline<Cr>") -- cmd mode
vim.keymap.set("n", ":", ":FineCmdline !<Cr>") -- external cmd
vim.keymap.set("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest revim.keymap.set ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest revim.keymap.set ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/majorvicky/packer.lua<CR>");
vim.keymap.set("n", "<leader>vrm", "<cmd>e ~/.config/nvim/lua/majorvicky/remap.lua<CR>");
vim.keymap.set("n", "<leader>vst", "<cmd>e ~/.config/nvim/lua/majorvicky/set.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Better window navigation
vim.keymap.set('n', '<C-h>',  '<C-w>h')
vim.keymap.set('n', '<C-j>',  '<C-w>j')
vim.keymap.set('n', '<C-k>',    '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Plugins --

-- NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Floaterm 
vim.keymap.set("n", "<leader>tn", ":FloatermNew<CR>")
vim.keymap.set("n", "<C-/>", ":FloatermToggle<CR>")
vim.keymap.set("t", "<C-/>", "<C-\\><C-N>:FloatermToggle<CR>")
vim.keymap.set("t", "<C-Left>", "<C-\\><C-N>:FloatermPrev<CR>")
vim.keymap.set("t", "<C-Right>", "<C-\\><C-N>:FloatermNext<CR>")

-- Status Line
-- Move to previous/next
vim.keymap.set('n', '<S-h>', '<Cmd>BufferPrevious<CR>')
vim.keymap.set('n', '<S-l>', '<Cmd>BufferNext<CR>')
-- Close buffer
vim.keymap.set('n', '<S-x>', '<Cmd>BufferClose<CR>')
vim.keymap.set('n', '<S-z>', '<Cmd>BufferCloseAllButCurrent<CR>')
