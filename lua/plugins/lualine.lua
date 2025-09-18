return {
  "nvim-lualine/lualine.nvim",
  requires = { "nvim-tree/nvim-web-devicons", opt = true },
  lazy = false,

  config = function()
    require("lualine").setup({
      options = {
        -- theme = "codedark",
        -- theme = "nightfly",
        theme = "cyberdream",
        -- theme = "everforest",
        -- theme = "tokyonight",
        -- theme = "gruvbox",
        -- section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        globalstatus = true,
      },
    })
  end,
}
