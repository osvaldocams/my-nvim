return {
  -- 1. Desactivamos mini.comment para que no entre en conflicto
  { "echasnovski/mini.comment", enabled = false },

  -- 2. Instalamos Comment.nvim con soporte para inline/block comments
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      -- Soporte para comentar JSX / TSX / HTML de forma inteligente
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    opts = function()
      local tcontext = require("ts_context_commentstring.integrations.comment_nvim")
      return {
        -- Permite que Treesitter detecte si estás dentro de JSX/TSX
        pre_hook = tcontext.create_pre_hook(),
      }
    end,
  },
}
