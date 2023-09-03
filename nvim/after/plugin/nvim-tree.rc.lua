local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then return end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup {
  view = {
    width = 25,
  },
}

vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>')
