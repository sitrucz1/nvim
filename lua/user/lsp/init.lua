-- nvim-lspconfig
local lspconfig_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_ok then
  vim.notify('lspconfig is not installed.')
  return
end

-- mason
require "mason".setup({
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

-- mason-lspconfig
require "mason-lspconfig".setup({
  ensure_installed = { "lua_ls", "vimls", "pyright" },
  automatic_installation = false,
})

-- create the hook between mason_lsp_config and nvim-lspconfig
require "mason-lspconfig".setup_handlers {

  function (server_name)
    local sopts = {
      on_attach = require "user.lsp.handler".on_attach,
      flags = require "user.lsp.handler".lsp_flags,
      capabilities = require "user.lsp.handler".capabilities,
    }

    local server_opts_ok, server_opts = pcall(require, 'user.lsp.server.' .. server_name)
    if server_opts_ok then
      sopts = vim.tbl_deep_extend("force", server_opts, sopts)
    else
      vim.notify("language server custom settings not found => " .. server_name)
    end

    lspconfig[server_name].setup(sopts)
  end,

}

require "user.lsp.handler".setup()

