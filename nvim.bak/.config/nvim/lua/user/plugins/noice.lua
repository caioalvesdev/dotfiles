return {
  -- Dependências necessárias
  { "MunifTanjim/nui.nvim" },
  { "rcarriga/nvim-notify" },

  -- Plugin Noice
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup {
        cmdline = {
          enabled = true,         -- ativa o pop-up da linha de comando
          view = "cmdline_popup", -- define a interface do pop-up
          format = {
            cmdline = { pattern = "^:", icon = "", lang = "vim" },
          },
        },
        presets = {
          command_palette = true, -- ativa o estilo "paleta de comando"
        },
      }
    end,
    requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
  },
}
