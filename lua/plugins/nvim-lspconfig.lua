return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      automatic_installation = true,
      -- ensure_installed = { "lua_ls", "ts_ls", "ruby_lsp" },
      ensure_installed = { "ts_ls", "ruby_lsp" },
    })

    local lspconfig = require("lspconfig")

    local capabilities = vim.lsp.protocol.make_client_capabilities()

    lspconfig.laravel_ls.setup({
      cmd = { "/Users/erevista_04/go/bin/laravel-ls" },
      capabilities = capabilities,
    })

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = true },
          telemetry = { enable = true },
        },
      },
    })

    -- lspconfig.ts_ls.setup({})

    -- lspconfig.eslint_d.setup({
    --   settings = {
    --     enable = true,
    --   },
    -- })

    -- lspconfig.cssls.setup({})

    -- lspconfig.phpactor.setup({
    -- 	-- filetypes = { "php" },
    -- 	capabilities = capabilities,
    -- })

    -- lspconfig.intelephense.setup({
    -- 	filetypes = { "php", "blade", "blade.php" },
    -- 	capabilities = capabilities,
    -- })

    -- lspconfig.intelephense.setup({
    -- settings = {
    -- intelephense = {
    --   format = {
    --     provider = "php-cs-fixer",
    --     on_save = true,
    --   },
    --
    --   linter = {
    --     provider = "phpcs",
    --     enable = true,
    --   },
    -- },
    -- },
    -- })

    -- オプション: 一般的なLSPアクションのキーバインド (このファイルにまとめるのが良い)
    -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
    -- vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "[G]oto [R]eferences" })
    -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[G]oto [D]eclaration" })
    -- vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
    -- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
    -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
    -- vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
    -- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
    -- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
    -- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix" })
    -- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format (requires formatter)" })

    -- LSPがバッファにアタッチされた際に実行されるオートコマンド
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
        vim.bo[ev.buf].formatexpr = "v:lua.vim.lsp.formatexpr"
      end,
    })
  end,
}
