return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { mason = false },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "isort", "black" },
      },
      formatters = {
        black = {},
        isort = {
          prepend_args = { "--profile", "black" },
        },
      },
    },
  },
}
