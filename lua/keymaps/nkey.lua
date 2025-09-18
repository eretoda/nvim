local key = require("utils").key

-- ショートカット
key("n", "zx", ":source ~/.config/nvim/init.lua<CR>", { noremap = true })
key("n", "<C-e>", ":w<CR>:lua print('saved')<CR>", { noremap = true })
key("n", "gmks", ":lua MiniSessions.write('')<Left><Left>", { noremap = true })
key("n", "<space>e", function()
	vim.lsp.buf.format()
end, { noremap = true })

-- ウィンドウ操作
key("n", "<C-l>", "gt", { noremap = true })
key("n", "<C-h>", "gT", { noremap = true })
key("n", "<C-p>", "<C-^>", { noremap = true })
key("n", "<Left>", "<C-w>>", { noremap = true })
key("n", "<Right>", "<C-w><", { noremap = true })
key("n", "<Up>", "<C-w>+", { noremap = true })
key("n", "<Down>", "<C-w>-", { noremap = true })
key("n", "<space><space>l", "<C-w>v", { noremap = true })
key("n", "<space><space>h", "<C-w>v", { noremap = true })
key("n", "<space><space>j", "<C-w>s", { noremap = true })
key("n", "<space><space>k", "<C-w>s", { noremap = true })

key("n", "<space>wl", "<C-w>L", { noremap = true })
key("n", "<space>wh", "<C-w>H", { noremap = true })
key("n", "<space>wj", "<C-w>J", { noremap = true })
key("n", "<space>wk", "<C-w>K", { noremap = true })
-- key("n", "<space><space>k", "<C-w>c", { noremap = true })
-- key("n", "<space><space>h", "<C-w>c", { noremap = true })

-- arg周り
key("n", "<space><space>a", ":argadd %<CR>", { noremap = true })
key("n", "<space><space>d", ":argdelete %<CR>", { noremap = true })
key("n", "<space><space>s", ":args ", { noremap = true })

-- テキスト操作
key("n", "<space>h", "^", { noremap = true })
key("n", "<space>l", "$", { noremap = true })
-- key("n", "<C-]>", "ggVG", { noremap = true })
key("n", "<C-w>y", "ggVG", { noremap = true })

-- 行に関する操作
key("n", "<C-s>", [[:lua CompleteUseState()<CR> :w<CR>]], { noremap = true, silent = true })
key("n", "<C-i>", [[:lua YankFileName()<CR>]], { noremap = true, silent = true })

-- Google検索
key("n", "<space><space>g", ":OpenBrowserSearch ", { noremap = true })

-- NeoTree
key("n", "<C-t>", ":Neotree toggle reveal_force_cwd<CR>", { noremap = true, silent = true })
key("n", "<space>x", ":Neotree reveal<CR>", { noremap = true, silent = true })

---
key("n", "gq", ':lua vim.cmd(("silent !qlmanage -p %"))<CR>', { noremap = true })
