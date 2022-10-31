
-- local keymap = vim.keymap

-- keymap.set('n', '<Space>', ':tabedit')

local keymap = require("leon.utils-map").map

-- Testing
-- CR => {Enter}
keymap('n', '<Space>', ':tabedit<CR>')

-- Nvim file explorer
keymap('n', '<C-f>', ':NvimTreeToggle<CR>')

