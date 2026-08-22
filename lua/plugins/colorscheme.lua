return {
  {
    "sainnhe/edge",
    priority = 1000,
    config = function()
      vim.g.edge_style = "aura"
      vim.cmd.colorscheme("edge")
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "frappe",
    },
  },
}
