-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set conceallevel to 0 so backticks and markdown symbols are always visible
vim.opt.conceallevel = 0

-- Ancho de la sangría / indentación
vim.opt.tabstop = 4 -- Espacios que representa un tabulador en pantalla
vim.opt.shiftwidth = 4 -- Espacios aplicados en cada nivel de indentación (>)
vim.opt.softtabstop = 4 -- Espacios que se agregan/borran al presionar Tab o Backspace
vim.opt.expandtab = true -- Convierte automáticamente los pestañas en espacios
