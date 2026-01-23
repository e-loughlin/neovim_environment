---@type LazySpec
return {

  { "sainnhe/gruvbox-material", name = "gruvbox-material" },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        flavour = "mocha",
      }
    end,
  },

  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    config = function()
      require("tokyonight").setup {
        style = "moon",
      }
    end,
  },

  { "sainnhe/everforest", name = "everforest" },
  { "shaunsingh/nord.nvim", name = "nord" },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup {
        variant = "main",
      }
    end,
  },

  { "rebelot/kanagawa.nvim", name = "kanagawa" },
  { "EdenEast/nightfox.nvim", name = "nightfox" },

  -- =========================
  -- MODERN / POPULAR
  -- =========================

  { "projekt0n/github-nvim-theme", name = "github-theme" },
  { "navarasu/onedark.nvim", name = "onedark" },
  { "Mofiqul/vscode.nvim", name = "vscode" },
  { "marko-cerovac/material.nvim", name = "material" },
  { "olimorris/onedarkpro.nvim", name = "onedarkpro" },

  -- =========================
  -- MINIMAL / CLEAN
  -- =========================

  { "savq/melange-nvim", name = "melange" },
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
  { "srcery-colors/srcery-vim", name = "srcery" },
  { "mcchrish/zenbones.nvim", name = "zenbones", dependencies = "rktjmp/lush.nvim" },

  -- =========================
  -- HIGH CONTRAST / ACCESSIBLE
  -- =========================

  { "RRethy/base16-nvim", name = "base16" },
  { "sainnhe/sonokai", name = "sonokai" },
  { "ayu-theme/ayu-vim", name = "ayu" },

  -- =========================
  -- RETRO / FUN
  -- =========================

  { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
  { "dracula/vim", name = "dracula" },
  { "lifepillar/vim-solarized8", name = "solarized8" },

  -- =========================
  -- LIGHT THEMES (rare but useful)
  -- =========================

  { "rose-pine/neovim", name = "rose-pine-dawn" },
  { "catppuccin/nvim", name = "catppuccin-latte" },
  { "folke/tokyonight.nvim", name = "tokyonight-day" },
}
