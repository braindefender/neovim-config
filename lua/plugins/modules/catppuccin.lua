return {
  "catppuccin/nvim",
  enabled = true,
  lazy = false,
  priority = 150,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      background = {
        light = "latte",
        dark = "macchiato",
      },
    })

    vim.api.nvim_command("colorscheme catppuccin")
  end
}
