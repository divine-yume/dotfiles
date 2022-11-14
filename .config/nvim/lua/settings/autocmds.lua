-- Colorscheme settings
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = {
    "*"
  },
  callback = function()
    vim.cmd("highlight BufDimText guibg='NONE' guifg=darkgrey guisp=darkgrey gui='NONE'")
  end
})

-- Yank to windows clipboard
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  command = "call system('echo '.shellescape(join(v:event.regcontents, \"\\<CR>\")).' |  clip.exe')"
})

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste"
})
