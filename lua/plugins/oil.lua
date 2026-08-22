return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory (Oil)" },
    },
    init = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        nested = true,
        callback = function()
          if vim.fn.argc() == 0 and vim.api.nvim_buf_get_name(0) == "" then
            require("oil").open()
          end
        end,
      })
    end,
  },
}
