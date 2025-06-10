-- ~/.config/nvim/lua/plugins/osc52.lua
--
-- Allows clipboard to work while SSH via X11 Port Forwarding
--
-- Note: ~/.ssh/config must contain:
--
-- Host myserver
--   HostName your.server.ip.or.hostname
--   User yourusername
--   Port 22
--   ForwardAgent yes
--   ForwardX11 yes
--   ForwardX11Trusted yes
--
return {
  "ojroques/nvim-osc52",
  lazy = false,
  config = function()
    require("osc52").setup {
      max_length = 0, -- no limit
      silent = false, -- show message on copy
      trim = false, -- keep whitespace
    }

    -- Optional keymaps for visual and normal mode copy
    vim.keymap.set(
      "n",
      "<leader>c",
      function() return require("osc52").copy_operator() end,
      { expr = true, desc = "Copy with OSC52" }
    )

    vim.keymap.set("v", "<leader>c", function() require("osc52").copy_visual() end, { desc = "Copy visual with OSC52" })

    -- Yank automatically to clipboard on y
    local function copy()
      if vim.v.event.operator == "y" and vim.v.event.regname == "" then require("osc52").copy_register "" end
    end
    vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
  end,
}
