return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = { fmt = string.lower },
      sections = {
        lualine_a = { { 'mode', fmt = function(str) return str:sub(1, 1) end } },
        lualine_b = {},
        lualine_c = { { "filename", path = 1, shorting_target = 20 } },
        lualine_x = {},
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { "filename", path = 1, shorting_target = 20 } },
        lualine_x = { 'filesize' },
        lualine_y = {},
        lualine_z = {}
      },

    })
  end,
}
