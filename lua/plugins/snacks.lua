return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  ---@type snacks.animate.Duration|number
  ---@class snacks.animate.Config
  ---@field easing? snacks.animate.easing|snacks.animate.easing.Fn
  opts = {

    animate = {},
    -- scroll = {
    --   duration = { step = 8, total = 250 },
    --   easing = "expo",
    --   fps = 60,
    -- },
    dashboard = {
      -- sections = {
      --   { section = "header" },
      --   {
      --     pane = 2,
      --     section = "terminal",
      --     cmd = "colorscript -e square",
      --     height = 5,
      --     padding = 1,
      --   },
      --   { section = "keys",  gap = 1, padding = 1 },
      --   {
      --     pane = 2,
      --     icon = " ",
      --     title = "Recent Files",
      --     section = "recent_files",
      --     indent = 2,
      --     padding = 1,
      --   },
      --   { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
      --   {
      --     pane = 2,
      --     icon = " ",
      --     title = "Git Status",
      --     section = "terminal",
      --     enabled = function()
      --       return Snacks.git.get_root() ~= nil
      --     end,
      --     cmd = "git status --short --branch --renames",
      --     height = 5,
      --     padding = 1,
      --     ttl = 5 * 60,
      --     indent = 3,
      --   },
      --   { section = "startup" },
      -- },
      --

      sections = {
        { section = "header",  pane = 2 },
        { section = "keys",    gap = 1, padding = 1, pane = 2 },
        { section = "startup", pane = 2 },
        {
          -- pane = 2,
          icon = " ",
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 1,
        },
        { --[[ pane = 2, ]]
          icon = " ",
          title = "Projects",
          section = "projects",
          indent = 2,
          padding = 1,
        },
        {
          -- pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        {
          -- pane = 2,
          icon = " ",
          title = "Git log",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git log --oneline -20",
          height = 20,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        {
          section = "terminal",
          cmd = "pokemon-colorscripts -r; sleep .1",
          random = 10,
          pane = 3,
          indent = 6,
          height = 30,
        },
      },

      -- your dashboard configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
