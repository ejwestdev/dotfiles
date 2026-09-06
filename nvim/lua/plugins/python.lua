return {
  -- Configure conform.nvim to use Black and isort for Python
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "isort", "black" },
      },
      formatters = {
        black = {
          prepend_args = { "--line-length", "88" },
        },
        isort = {
          prepend_args = { "--profile", "black" },
        },
      },
    },
  },
}
