return {
  "akinsho/bufferline.nvim",
  enabled = true,
  event = "VimEnter",
  lazy = true,
  opts = {
    options = {
      mode = "buffers",
      numbers = "none",
      close_command = function(buffer_number)
        vim.api.nvim_buf_delete(buffer_number, { force = true })
      end,
      right_mouse_command = "",
      color_icons = true,
      tab_size = 18,
      max_name_length = 18,
      max_prefix_length = 15,
      truncate_names = true,
      show_tab_indicators = true,
      separator_style = "thin",
      diagnostics = "nvim_lsp",
      show_close_icon = false,
      hover = {
        enabled = false,
        delay = 200,
        reveal = { "close" },
      },
      -- TODO: check neo-tree integration
      -- offsets = {
      --   filetype = "neo-tree",
      --   text = "Neo-tree",
      --   highlight = "Directory",
      --   text_align = "left",
      -- },
    },
  },
}
