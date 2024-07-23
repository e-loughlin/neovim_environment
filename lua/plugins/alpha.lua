return {
  "goolord/alpha-nvim",

  dependencies = {
    "ozthemagician/alpha-cowsays-nvim",
    "BlakeJC94/alpha-nvim-fortune",
  },
  opts = function(_, opts) -- override the options using lazy.nvim
    opts.section.header.val = { -- change the header section value
      "                              ",
      "                              ",
      "⠀⣀⣀⣀⡀⠀⠀⠀⠀⣀⣤⣶⣶⣾⣿⣿⣿⣷⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀",
      "⣾⣿⠛⠛⠛⠛⢶⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀",
      "⢹⣿⡀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠛⣿⣷⣄⠀⠀⠀",
      "⠀⢻⣷⣀⣾⣿⡟⠁⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⣸⣿⣿⣆⠀⠀",
      "⠀⠀⠙⠁⠻⣿⣿⣿⣿⣦⣄⠀⠀⠙⢿⣿⣿⣿⣄⠀⠀⢀⠠⠊⠀⠀⠹⣿⡇⠀",
      "⠀⠀⢰⣷⡄⠈⢿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠉⠛⢿⣶⡖⠁⠀⠀⠀⢀⣴⣿⣿⠀",
      "⠀⠀⣾⣿⣿⣦⡀⠙⢿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠹⣷⣄⠀⣠⠔⠛⠻⣿⣿⡇",
      "⠀⠀⢻⣿⣿⣿⣿⣦⡀⠙⢿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠹⣿⣟⠁⠀⠀⠀⣽⣿⠃",
      "⠀⠀⠘⣿⣿⣿⣿⣿⣿⣦⡀⠉⠻⡿⠁⠀⠀⠀⠀⠀⠀⣿⣿⣦⣤⣤⣾⣿⡟⠀",
      "⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠃⠀",
      "⠀⠀⠀⠀⠙⢿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⡿⢻⡄⠀",
      "⠀⠀⠀⠀⠀⠈⠻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿⣿⡿⠋⠀⠀⢻⡄",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣿⣷⣦⡄⣨⣯⣄⡀⠀⠀⢀⣿",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠛⠛⠋⠉⠀⠀⠀⠉⠙⠻⠿⠿⠿⠋",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⣶⣶⡶⢶⣶⣤⡀⢠⣴⣶⠿⢶⣦⣄⢰⣶⣶⣄⠀⣶⣶⠀⣶⡆⣶⣶⣶⣶⣶⣶",
      "⣿⣿⡇⠀⣹⣿⡇⣿⣿⡇⠀⢀⣿⣿⢸⣿⡿⢿⣷⣿⣿⠀⠿⠇⠀⠀⣿⣿⠀⠀",
      "⠿⠿⠷⠿⠿⠋⠀⠈⠻⠿⠶⠿⠟⠋⠸⠿⠇⠀⠙⠿⠿⠀⠀⠀⠀⠀⠿⠿⠀⠀",
      "⣤⣶⣶⣶⣤⣄⠀⢠⣶⣶⡄⠀⢠⣴⣤⡄⠀⣴⣶⠀⣴⣶⡄⢀⣤⣶⣶⣦⣄⡀",
      "⣿⣿⣧⣤⣿⡿⢣⣾⡟⢻⣿⡄⢸⣿⡿⢿⣦⣿⣿⠀⣿⣿⣷⣿⣿⠁⠀⠙⠛⠃",
      "⠿⠿⠏⠉⠁⠀⠾⠿⠛⠛⠿⠿⠼⠿⠷⠀⠻⠿⠿⠀⠿⠿⠇⠙⠿⣷⣶⡿⠿⠃",
    }

    --     -- Possible options: Function, String, Number, Keyword, Identifier...
    opts.section.header.opts.hl = "Identifier"

    -- local cow = require "alpha-cowsays-nvim"
    --
    local fortune = require "alpha.fortune"
    opts.section.header.val = "fart"
  end,
}

--
-- return {
--   "goolord/alpha-nvim",
--   event = "VimEnter",
--   dependencies = {
--     "ozthemagician/alpha-cowsays-nvim",
--   },
--   config = function()
--     local alpha = require "alpha"
--     local startify = require "alpha.themes.startify"
--     local cow = require "alpha-cowsays-nvim"
--
--     local dashboard = require "alpha.themes.dashboard"
--
--     -- Set header
--     dashboard.section.header.val = {
--       "                              ",
--       "                              ",
--       "⠀⣀⣀⣀⡀⠀⠀⠀⠀⣀⣤⣶⣶⣾⣿⣿⣿⣷⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀",
--       "⣾⣿⠛⠛⠛⠛⢶⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀",
--       "⢹⣿⡀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠛⣿⣷⣄⠀⠀⠀",
--       "⠀⢻⣷⣀⣾⣿⡟⠁⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⣸⣿⣿⣆⠀⠀",
--       "⠀⠀⠙⠁⠻⣿⣿⣿⣿⣦⣄⠀⠀⠙⢿⣿⣿⣿⣄⠀⠀⢀⠠⠊⠀⠀⠹⣿⡇⠀",
--       "⠀⠀⢰⣷⡄⠈⢿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠉⠛⢿⣶⡖⠁⠀⠀⠀⢀⣴⣿⣿⠀",
--       "⠀⠀⣾⣿⣿⣦⡀⠙⢿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠹⣷⣄⠀⣠⠔⠛⠻⣿⣿⡇",
--       "⠀⠀⢻⣿⣿⣿⣿⣦⡀⠙⢿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠹⣿⣟⠁⠀⠀⠀⣽⣿⠃",
--       "⠀⠀⠘⣿⣿⣿⣿⣿⣿⣦⡀⠉⠻⡿⠁⠀⠀⠀⠀⠀⠀⣿⣿⣦⣤⣤⣾⣿⡟⠀",
--       "⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠃⠀",
--       "⠀⠀⠀⠀⠙⢿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⡿⢻⡄⠀",
--       "⠀⠀⠀⠀⠀⠈⠻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿⣿⡿⠋⠀⠀⢻⡄",
--       "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣿⣷⣦⡄⣨⣯⣄⡀⠀⠀⢀⣿",
--       "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠛⠛⠋⠉⠀⠀⠀⠉⠙⠻⠿⠿⠿⠋",
--       "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--       "⣶⣶⡶⢶⣶⣤⡀⢠⣴⣶⠿⢶⣦⣄⢰⣶⣶⣄⠀⣶⣶⠀⣶⡆⣶⣶⣶⣶⣶⣶",
--       "⣿⣿⡇⠀⣹⣿⡇⣿⣿⡇⠀⢀⣿⣿⢸⣿⡿⢿⣷⣿⣿⠀⠿⠇⠀⠀⣿⣿⠀⠀",
--       "⠿⠿⠷⠿⠿⠋⠀⠈⠻⠿⠶⠿⠟⠋⠸⠿⠇⠀⠙⠿⠿⠀⠀⠀⠀⠀⠿⠿⠀⠀",
--       "⣤⣶⣶⣶⣤⣄⠀⢠⣶⣶⡄⠀⢠⣴⣤⡄⠀⣴⣶⠀⣴⣶⡄⢀⣤⣶⣶⣦⣄⡀",
--       "⣿⣿⣧⣤⣿⡿⢣⣾⡟⢻⣿⡄⢸⣿⡿⢿⣦⣿⣿⠀⣿⣿⣷⣿⣿⠁⠀⠙⠛⠃",
--       "⠿⠿⠏⠉⠁⠀⠾⠿⠛⠛⠿⠿⠼⠿⠷⠀⠻⠿⠿⠀⠿⠿⠇⠙⠿⣷⣶⡿⠿⠃",
--     }
--
--     -- Possible options: Function, String, Number, Keyword, Identifier...
--     dashboard.section.header.opts.hl = "Identifier"
--
--     -- local fortune = require "alpha.fortune"
--     -- dashboard.section.footer.val = fortune()
--
--     local button = require("astronvim.utils").alpha_button
--     local get_icon = require("astronvim.utils").get_icon
--     dashboard.section.buttons.val = {
--       button("LDR n  ", get_icon("FileNew", 2, true) .. "New File  "),
--       button("LDR f f", get_icon("Search", 2, true) .. "Find File  "),
--       button("LDR f o", get_icon("DefaultFile", 2, true) .. "Recents  "),
--       button("LDR f w", get_icon("WordFile", 2, true) .. "Find Word  "),
--       button("LDR f '", get_icon("Bookmarks", 2, true) .. "Bookmarks  "),
--       button("LDR S l", get_icon("Refresh", 2, true) .. "Last Session  "),
--     }
--     -- Send config to alpha
--     alpha.setup(dashboard.opts)
--
--     startify.section.header.val = cow.cowsays()
--
--     alpha.setup(startify.config)
--   end,
-- }
