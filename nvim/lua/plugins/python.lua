return {
  -- Black only for Python formatting (Ruff stays for LSP/lint)
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
