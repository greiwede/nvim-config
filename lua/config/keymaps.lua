-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- toggle between last files
--vim.keymap.set("n", "<leader><leader>", "<c-^>")
vim.cmd("nnoremap <leader><leader> <c-^>")
-- LSP custom remaps: Jump between errors
vim.keymap.set("n", "<leader>j", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>k", vim.diagnostic.goto_next)

local status, telescope = pcall(require, "telescope.builtin")
if status then
  -- Telescope
  vim.keymap.set("n", "<leader>ff", telescope.find_files)
  vim.keymap.set("n", "<leader>fg", telescope.live_grep)
  vim.keymap.set("n", "<leader>fb", telescope.buffers)
  vim.keymap.set("n", "<leader>fh", telescope.help_tags)
  vim.keymap.set("n", "<leader>fs", telescope.git_status)
  vim.keymap.set("n", "<leader>fc", telescope.git_commits)
else
  print("Telescope not found")
end

-- Save
vim.keymap.set("n", "<leader>w", "<CMD>update<CR>")

-- Quit
vim.keymap.set("n", "<leader>q", "<CMD>q<CR>")
