return {
  "GCBallesteros/jupytext.nvim",
  config = function()
    require("jupytext").setup {
      style = "markdown",
      output_extension = "md",
      force_ft = "markdown",
      custom_language_formatting = {},
      lazy = false,
    }
  end,
}
