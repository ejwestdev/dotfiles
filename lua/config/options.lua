-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional options here

vim.o.shell = "fish"

local function update_cursor()
  if vim.o.background == "light" then
    -- black block cursor in insert mode for light themes
    vim.cmd.highlight({ "iCursor", "guibg=#000000", "guifg=#ffffff" })
    vim.opt.guicursor = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-iCursor,r-cr-o:hor20-Cursor"
  else
    -- default cursor for dark themes
    vim.cmd.highlight({ "iCursor", "guibg=NONE", "guifg=NONE" })
    vim.opt.guicursor = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = update_cursor,
})

update_cursor()
