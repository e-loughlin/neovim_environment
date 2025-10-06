return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = {
        adapter = "copilot", -- Use Copilot as the default
        model = "gpt-4.1",
      },
    },
    opts = {
      log_level = "DEBUG", -- Optional: keep this for debugging
    },
  },
}
