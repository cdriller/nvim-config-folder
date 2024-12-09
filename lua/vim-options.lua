vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.scrolloff = 8
vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.opt.number = true
vim.keymap.set({"n","v"}, "<Down>", "<C-d>", { desc = "Scroll window Downwards (CTRL-d)" })
vim.keymap.set({"n","v"}, "<Up>", "<C-u>", { desc = "Scroll window Upwards (CTRL-u)" })
vim.keymap.set('n', '<C-w>|', '<C-w>v', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>-', '<C-w>s', { noremap = true, silent = true })
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.filetype.add({
  extension = {
    pl = "prolog",
  },
})
