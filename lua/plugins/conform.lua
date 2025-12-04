return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  -- This will provide type hinting with LuaLS
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      dart = { "dart_format_custom" },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },

    temp_dir = "/tmp/conform",

    -- Set up format-on-save
    format_on_save = { timeout_ms = 2500 },
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
      dart_format_custom = {
        command = "dart",
        -- stdin = false, -- prevents sending the file content via stdin but creates a temp file instead
        args = function(ctx) return { "format", "--line-length", "120", ctx.filename } end,
      },
    },
    init = function()
      -- If you want the formatexpr, here is the place to set it
      vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
  },
}
