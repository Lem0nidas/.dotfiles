
-- Assign an empty table to the local variable named M
local M = {}


-- Define your function & add it the M table
function M.map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Since the M table is scoped, it has to be returned for usage elsewhere
return M
