local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

local plugins_table = {}

for _, colorscheme in ipairs(require("plugins.colorschemes")) do
  table.insert(plugins_table, colorscheme)
end

table.insert(plugins_table, { require("plugins.nvim-web-devicons") })
table.insert(plugins_table, { require("plugins.blink-cmp") })
table.insert(plugins_table, { require("plugins.Comment") })
table.insert(plugins_table, { require("plugins.csvview") })
table.insert(plugins_table, { require("plugins.denops") })
table.insert(plugins_table, { require("plugins.diffview") })
table.insert(plugins_table, { require("plugins.gitsigns") })
table.insert(plugins_table, { require("plugins.harpoon") })
table.insert(plugins_table, { require("plugins.hlchunk") })
table.insert(plugins_table, { require("plugins.hop") })
table.insert(plugins_table, { require("plugins.incline") })
table.insert(plugins_table, { require("plugins.lazygit") })
table.insert(plugins_table, { require("plugins.lspsaga") })
table.insert(plugins_table, { require("plugins.lualine") })
table.insert(plugins_table, { require("plugins.mini") })
table.insert(plugins_table, { require("plugins.neo-tree") })
table.insert(plugins_table, { require("plugins.neoscroll") })
table.insert(plugins_table, { require("plugins.noice") })
table.insert(plugins_table, { require("plugins.none-ls") })
table.insert(plugins_table, { require("plugins.nvim-colorizer") })
table.insert(plugins_table, { require("plugins.nvim-lspconfig") })
table.insert(plugins_table, { require("plugins.nvim-notify") })
table.insert(plugins_table, { require("plugins.nvim-surround") })
table.insert(plugins_table, { require("plugins.nvim-ts-autotag") })
table.insert(plugins_table, { require("plugins.markdown-preview") })
table.insert(plugins_table, { require("plugins.open-browser") })
table.insert(plugins_table, { require("plugins.pantran") })
table.insert(plugins_table, { require("plugins.render-markdown") })
table.insert(plugins_table, { require("plugins.showkeys") })
table.insert(plugins_table, { require("plugins.skkeleton") })
table.insert(plugins_table, { require("plugins.snacks") })
-- table.insert(plugins_table, { require("plugins.smear-cursor") })
table.insert(plugins_table, { require("plugins.telescope") })
table.insert(plugins_table, { require("plugins.tiny-inline-diagnostic") })
table.insert(plugins_table, { require("plugins.vim-table-mode") })
table.insert(plugins_table, { require("plugins.vim-blade") })
table.insert(plugins_table, { "vim-jp/vimdoc-ja" })

vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins_table)
