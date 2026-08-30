return {
  "mistweaverco/kulala.nvim",
  ft = { "http", "rest" },
  opts = {
    -- Muestra la ventana de respuesta a la derecha (en división vertical)
    default_view = "body",
    display_mode = "split",
    split_direction = "vertical",
  },
  keys = {
    { "<leader>Rs", "<cmd>lua require('kulala').run()<cr>", desc = "Ejecutar petición HTTP" },
    { "<leader>Rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Alternar Body/Headers" },
    { "<leader>Rn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Siguiente petición" },
    { "<leader>Rp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Petición anterior" },
    { "<leader>Rc", "<cmd>lua require('kulala').copy_as_curl()<cr>", desc = "Copiar como cURL" },
  },
}
