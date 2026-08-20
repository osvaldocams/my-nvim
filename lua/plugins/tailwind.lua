return {
  -- 1. Configurar Tailwind LSP y el menú de sugerencias
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes = {
            "html",
            "css",
            "javascriptreact",
            "typescriptreact",
            "astro",
            "svelte",
            "vue",
          },
          settings = {
            tailwindCSS = {
              -- Permite autocompletado dentro de helpers como clsx(), cva(), twMerge(), etc.
              experimental = {
                classRegex = {
                  { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*)\"'" },
                  { "cx\\(([^)]*)\\)", "(?:\"|'|`)([^\"'`](?:\"|'|`)" },
                  { "twMerge\\(([^)]*)\\)", "[\"'`]([^\"'`]*)\"'" },
                },
              },
            },
          },
        },
      },
    },
  },

  -- 2. Resaltar colores CSS / Tailwind en vivo directamente en el texto
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = function()
      local hi = require("mini.hipatterns")
      return {
        highlighters = {
          -- Resalta colores hex (#ff0000, etc.) y clases de color Tailwind
          hex_color = hi.gen_highlighter.hex_color(),
        },
      }
    end,
  },
}
