return {
  -- Instalar el plugin de Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Asegura que se cargue antes que otros plugins de UI
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- Usa las variables de color en la terminal integrada
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- Invertir colores para búsquedas, selecciones, etc.
        contrast = "hard", -- Opciones de contraste: "hard", "soft" o "" (medium)
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },

  -- Indicarle a LazyVim que use Gruvbox como colorscheme activo
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
