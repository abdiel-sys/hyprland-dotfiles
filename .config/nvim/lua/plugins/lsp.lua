return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                -- Add "hl" alongside "vim" so the LSP stops complaining
                globals = { "vim", "hl" },
              },
            },
          },
        },
      },
    },
  },
}
