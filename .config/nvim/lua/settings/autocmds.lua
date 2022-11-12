vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = {
    "*"
  },
  callback = function()
    vim.cmd("highlight BufDimText guibg='NONE' guifg=darkgrey guisp=darkgrey gui='NONE'")
  end
})
