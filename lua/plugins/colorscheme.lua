return {
  {
    "sainnhe/edge",
    priority = 1000,
    config = function()
      vim.g.edge_style = "aura"
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      flavour = "frappe",
    },
  },
}
