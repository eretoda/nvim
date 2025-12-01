return {
    "folke/snacks.nvim",
    ---@type snacks.Config
    ---@type snacks.animate.Duration|number
    ---@class snacks.animate.Config
    ---@field easing? snacks.animate.easing|snacks.animate.easing.Fn
    opts = {

        animate = {},

        dashboard = {
            sections = {
                {
                    pane = 2,
                    icon = " ",
                    title = "Recent Files",
                    section = "recent_files",
                    indent = 2,
                    padding = 3,
                    height = 16,
                },
                {
                    pane = 2,
                    icon = " ",
                    title = "Projects",
                    section = "projects",
                    indent = 2,
                    padding = 3,
                },
                -- {
                -- 	icon = " ",
                -- 	title = "Git Status",
                -- 	section = "terminal",
                -- 	enabled = function()
                -- 		return Snacks.git.get_root() ~= nil
                -- 	end,
                -- 	cmd = "git status --short --branch --renames",
                -- 	height = 15,
                -- 	-- padding = 3,
                -- 	ttl = 5 * 60,
                -- 	indent = 3,
                -- },
                -- {
                -- 	icon = " ",
                -- 	title = "Git log",
                -- 	section = "terminal",
                -- 	enabled = function()
                -- 		return Snacks.git.get_root() ~= nil
                -- 	end,
                -- 	cmd = "git log --pretty=format:'%C(auto,yellow)%h%C(auto,reset) %<(45,trunc)%s' -16",
                -- 	height = 20,
                -- 	-- padding = 3,
                -- 	ttl = 5 * 60,
                -- 	indent = 3,
                -- },
                { pane = 1, section = "header",  position = "left" },
                {
                    pane = 1,
                    section = "keys",
                    gap = 1,
                    -- padding = 1,
                    position = "left",
                },
                { pane = 1, section = "startup", position = "left" },
                -- {
                -- 	pane = 3,
                -- 	section = "terminal",
                -- 	-- cmd = "chafa /Users/erevista_04/contents/IMG_3639.JPG --scale=0.4; sleep .1",
                -- 	cmd = "pokemon-colorscripts -r; sleep .1",
                -- 	random = 10,
                -- 	indent = 6,
                -- 	height = 18,
                -- },
                {
                    pane = 2,
                    section = "terminal",
                    cmd = 'memory_pressure -Q && top -l 2 | grep -E "^CPU"',
                    -- cmd = "docker run --rm -it bcbcarl/hollywood",
                    -- cmd = "asciiquarium",
                    -- cmd = "cmatrix",
                    -- indent = 6,
                    -- width = 85,
                    height = 5,
                },
                -- {
                --     pane = 3,
                --     section = "terminal",
                --     cmd = "macmon",
                --     indent = 4,
                --     height = 24,
                -- },
            },
        },

        -- your dashboard configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
}
