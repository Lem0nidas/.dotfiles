-- Colorscheme configuration
-- Set theme based on the Time of the day

-- get Time in Hours
local time = os.date("%H")

-- The tonumber() function converts string to int
-- Set light theme if the time is before 18:00 o'clock ... else set the theme to dark
if tonumber(time)<18 then
	vim.cmd('set background=light')
else
	vim.cmd('set background=dark')
end

vim.cmd('colorscheme gruvbox')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

