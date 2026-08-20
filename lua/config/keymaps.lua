-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Atajos para terminales flotantes independientes en teclado latino
local lazyterm = function(opts)
  Snacks.terminal.toggle(nil, opts)
end

-- Abrir/ocultar Terminal 1 con Space + t + 1 (o cambia por el atajo que prefieras)
vim.keymap.set({ "n", "t" }, "<leader>t1", function()
  lazyterm({ count = 1 })
end, { desc = "Terminal 1" })

-- Abrir/ocultar Terminal 2 con Space + t + 2
vim.keymap.set({ "n", "t" }, "<leader>t2", function()
  lazyterm({ count = 2 })
end, { desc = "Terminal 2" })

-- Abrir/ocultar Terminal 3 con Space + t + 3
vim.keymap.set({ "n", "t" }, "<leader>t3", function()
  lazyterm({ count = 3 })
end, { desc = "Terminal 3" })

-- Función para alternar / ocultar TODAS las terminales a la vez
local function toggle_all_terminals()
  local wins = vim.api.nvim_list_wins()
  local term_wins = {}

  -- 1. Buscar todas las ventanas que contengan una terminal
  for _, win in ipairs(wins) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].buftype == "terminal" then
      table.insert(term_wins, win)
    end
  end

  -- 2. Si hay al menos una terminal visible en pantalla -> Ocultarlas todas
  if #term_wins > 0 then
    for _, win in ipairs(term_wins) do
      if vim.api.nvim_win_is_valid(win) then
        vim.api.nvim_win_close(win, false)
      end
    end
  else
    -- 3. Si no hay ninguna visible -> Mostrar las 3 terminales juntas
    for count = 1, 3 do
      Snacks.terminal.toggle(nil, { count = count })
    end
  end
end

-- Atajo: Space + t + a ("Terminal All")
vim.keymap.set({ "n", "t" }, "<leader>ta", toggle_all_terminals, { desc = "Toggle todas las terminales" })

-- Al presionar Esc dentro de la terminal, salir inmediatamente al Modo Normal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Salir a Modo Normal en Terminal" })
