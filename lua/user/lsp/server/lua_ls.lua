return {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        pathStrict = false,
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          '/usr/share/lua/5.3',
          vim.fn.stdpath("config") .. "/lua",
        }
      }
    }
  }
}
