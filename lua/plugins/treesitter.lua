-- Treesitter configuration with textobjects for code cells
---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects", -- Ensure textobjects module is installed
  },
  opts = {
    ensure_installed = {
      "lua",
      "vim",
<<<<<<< HEAD
      "markdown", -- Ensure Markdown parser is installed for code cells
    },
    textobjects = {
      move = {
        enable = true,
        set_jumps = false, -- Change to true if you want to populate the jump list
        -- goto_next_start = {
        --   ["]b"] = { query = "@code_cell.inner", desc = "next code block" },
        -- },
        -- goto_previous_start = {
        --   ["[b"] = { query = "@code_cell.inner", desc = "previous code block" },
        -- },
      },
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["ib"] = { query = "@code_cell.inner", desc = "in block" },
          ["ab"] = { query = "@code_cell.outer", desc = "around block" },
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>sbl"] = "@code_cell.outer",
        },
        swap_previous = {
          ["<leader>sbh"] = "@code_cell.outer",
        },
      },
||||||| parent of 02622ed (2025-02-17_12:51:03)
      "dart",
      -- add more arguments for adding more treesitter parsers
=======
      "markdown", -- Ensure Markdown parser is installed for code cells
    },
    textobjects = {
      move = {
        enable = true,
        set_jumps = false, -- Change to true if you want to populate the jump list
        goto_next_start = {
          ["]b"] = { query = "@code_cell.inner", desc = "next code block" },
        },
        goto_previous_start = {
          ["[b"] = { query = "@code_cell.inner", desc = "previous code block" },
        },
      },
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["ib"] = { query = "@code_cell.inner", desc = "in block" },
          ["ab"] = { query = "@code_cell.outer", desc = "around block" },
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>sbl"] = "@code_cell.outer",
        },
        swap_previous = {
          ["<leader>sbh"] = "@code_cell.outer",
        },
      },
>>>>>>> 02622ed (2025-02-17_12:51:03)
    },
  },
}
