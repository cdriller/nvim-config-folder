vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.scrolloff = 8
vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.opt.number = true
vim.keymap.set("n", "<Down>", "<C-d>", {desc = "Scroll window Downwards (CTRL-d)"})
vim.keymap.set("n", "<Up>", "<C-u>", {desc = "Scroll window Upwards (CTRL-u)"})
