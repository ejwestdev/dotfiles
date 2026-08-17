return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              target = "thumbv8m.main-none-eabihf",
              allTargets = false,
            },
            check = {
              command = "clippy",
            },
          },
        },
      },
    },
  },
}