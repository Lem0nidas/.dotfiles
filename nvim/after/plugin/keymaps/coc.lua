local keymap = require("leon.utils-map").map

keymap('i', '<Tab>', "pumvisible() ? '<C-n>' : '<Tab>'", { silent = true, expr = true, replace_keycodes = false }) 


-- keymap('i', '<Tab>', '<C-n>')
