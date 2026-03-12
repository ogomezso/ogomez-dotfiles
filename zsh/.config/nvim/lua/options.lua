require "nvchad.options"

-- Performance optimizations
local o = vim.o
o.updatetime = 250
o.timeoutlen = 300

-- Faster startup - enable loader
vim.loader.enable()
