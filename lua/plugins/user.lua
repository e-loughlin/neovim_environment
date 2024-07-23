---@type LazySpec
return {
  -- == Examples of Overriding Plugins ==

  -- Color Schemes
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
  },

  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
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
      return opts
    end,
  },

}
