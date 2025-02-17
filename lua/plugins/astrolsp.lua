-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
<<<<<<< HEAD
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
    },

    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = { "dart" },
        ignore_filetypes = {},
      },
      disabled = {},
      timeout_ms = 1000,
||||||| parent of 02622ed (2025-02-17_12:51:03)
      codelens = true, -- enable/disable codelens refresh on start
      inlay_hints = false, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
=======
      codelens = true, -- enable/disable codelens refresh on start
      inlay_hints = false, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
>>>>>>> 02622ed (2025-02-17_12:51:03)
    },

    servers = {
<<<<<<< HEAD
      "jdtls",
      -- "pyright",
||||||| parent of 02622ed (2025-02-17_12:51:03)
      -- "pyright",
=======
      -- "pyright", -- Uncomment this if you're not using Mason to manage the `pyright` server
>>>>>>> 02622ed (2025-02-17_12:51:03)
    },
<<<<<<< HEAD

||||||| parent of 02622ed (2025-02-17_12:51:03)
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
=======

    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
>>>>>>> 02622ed (2025-02-17_12:51:03)
    config = {
<<<<<<< HEAD
      pyright = {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        settings = {
          python = {
            analysis = {
              diagnosticSeverityOverrides = {
                reportUnusedExpression = "none",
              },
            },
          },
        },
      },

||||||| parent of 02622ed (2025-02-17_12:51:03)
      -- clangd = { capabilities = { offsetEncoding = "utf-8" } },
=======
      pyright = {
        on_attach = function(client, bufnr)
          -- Your custom on_attach function can be added here
        end,
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        settings = {
          python = {
            analysis = {
              diagnosticSeverityOverrides = {
                reportUnusedExpression = "none",
              },
            },
          },
        },
      },
>>>>>>> 02622ed (2025-02-17_12:51:03)
      clangd = {
        cmd = {
          "clangd",
          "--compile-commands-dir=/Users/eloughlin/ws/polez2",
          "--header-insertion=never", -- optional
          "--clang-tidy",
          "--all-scopes-completion",
        },
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        init_options = {
          clangdFileStatus = true,
        },
      },

      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev" },
              extraArgs = { "--profile", "rust-analyzer" },
            },
          },
        },
      },
    },
<<<<<<< HEAD

||||||| parent of 02622ed (2025-02-17_12:51:03)
    -- customize how language servers are attached
=======

    -- customize how language servers are attached
>>>>>>> 02622ed (2025-02-17_12:51:03)
    handlers = {
<<<<<<< HEAD
||||||| parent of 02622ed (2025-02-17_12:51:03)
      -- a function without a key is simply the default handler, functions take two parameters, the server name and the configured options table for that server
      -- function(server, opts) require("lspconfig")[server].setup(opts) end
=======
      -- a function without a key is simply the default handler, functions take two parameters, the server name and the configured options table for that server
>>>>>>> 02622ed (2025-02-17_12:51:03)
      dartls = function(_, opts) require("lspconfig").dartls.setup(opts) end,
<<<<<<< HEAD

      jdtls = function(_, opts)
        local jdtls = require "jdtls"
        local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
        local root_dir = require("jdtls.setup").find_root(root_markers)
        opts.root_dir = root_dir

        -- Each project has its own workspace folder
        local workspace_dir = vim.fn.expand "~/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")
        opts.cmd = { "jdtls", "-data", workspace_dir }

        jdtls.start_or_attach(opts)
      end,
||||||| parent of 02622ed (2025-02-17_12:51:03)

      -- the key is the server that is being setup with `lspconfig`
      -- rust_analyzer = false, -- setting a handler to false will disable the set up of that language server
      -- pyright = function(_, opts) require("lspconfig").pyright.setup(opts) end -- or a custom handler function can be passed
=======
>>>>>>> 02622ed (2025-02-17_12:51:03)
    },
<<<<<<< HEAD

||||||| parent of 02622ed (2025-02-17_12:51:03)
    -- Configure buffer local auto commands to add when attaching a language server
=======

    -- Configure buffer local auto commands to add when attaching a language server
>>>>>>> 02622ed (2025-02-17_12:51:03)
    autocmds = {
      lsp_codelens_refresh = {
        cond = "textDocument/codeLens",
        {
          event = { "InsertLeave", "BufEnter" },
          desc = "Refresh codelens (buffer)",
          callback = function(args)
            if require("astrolsp").config.features.codelens then vim.lsp.codelens.refresh { bufnr = args.buf } end
          end,
        },
      },
    },
<<<<<<< HEAD

    -- ✅ Add your custom LSP mappings globally (works with which-key)
||||||| parent of 02622ed (2025-02-17_12:51:03)
    -- mappings to be set up on attaching of a language server
=======

    -- mappings to be set up on attaching of a language server
>>>>>>> 02622ed (2025-02-17_12:51:03)
    mappings = {
      n = {
<<<<<<< HEAD
        ["gd"] = {
          function() require("telescope.builtin").lsp_definitions() end,
          desc = "Go to definition",
          cond = "textDocument/definition",
||||||| parent of 02622ed (2025-02-17_12:51:03)
        -- a `cond` key can provided as the string of a server capability to be required to attach, or a function with `client` and `bufnr` parameters from the `on_attach` that returns a boolean
        gD = {
          function() vim.lsp.buf.declaration() end,
          desc = "Declaration of current symbol",
          cond = "textDocument/declaration",
=======
        gD = {
          function() vim.lsp.buf.declaration() end,
          desc = "Declaration of current symbol",
          cond = "textDocument/declaration",
>>>>>>> 02622ed (2025-02-17_12:51:03)
        },
        ["gr"] = {
          function() require("telescope.builtin").lsp_references() end,
          desc = "Find references",
          cond = "textDocument/references",
        },
        ["gi"] = {
          function() require("telescope.builtin").lsp_implementations() end,
          desc = "Go to implementation",
          cond = "textDocument/implementation",
        },
        ["gt"] = {
          function() require("telescope.builtin").lsp_type_definitions() end,
          desc = "Type definition",
          cond = "textDocument/typeDefinition",
        },
        ["K"] = {
          function() vim.lsp.buf.hover() end,
          desc = "Hover",
        },
        ["<leader>lr"] = {
          function() vim.lsp.buf.rename() end,
          desc = "Rename symbol",
          cond = "textDocument/rename",
        },
        ["<leader>ld"] = {
          function() vim.diagnostic.open_float() end,
          desc = "Line diagnostics",
        },
        ["[d"] = {
          function() vim.diagnostic.goto_prev() end,
          desc = "Prev diagnostic",
        },
        ["]d"] = {
          function() vim.diagnostic.goto_next() end,
          desc = "Next diagnostic",
        },
        ["<leader>ls"] = {
          function() require("telescope.builtin").lsp_document_symbols() end,
          desc = "Document symbols",
        },
        -- Removed because it fails to work. Default still works.
        -- ["<leader>lS"] = {
        --   function() require("telescope.builtin").lsp_workspace_symbols() end,
        --   desc = "Workspace symbols",
        -- },
      },
      i = {
        ["<C-h>"] = {
          function() vim.lsp.buf.signature_help() end,
          desc = "Signature help",
          cond = "textDocument/signatureHelp",
        },
      },
    },
<<<<<<< HEAD

    -- ✅ Optional: Add extra on_attach logic (not required for mappings above to work)
||||||| parent of 02622ed (2025-02-17_12:51:03)
    -- A custom `on_attach` function to be run after the default `on_attach` function
    -- takes two parameters `client` and `bufnr`  (`:h lspconfig-setup`)
=======

    -- A custom `on_attach` function to be run after the default `on_attach` function
>>>>>>> 02622ed (2025-02-17_12:51:03)
    on_attach = function(client, bufnr)
<<<<<<< HEAD
      -- You could add custom highlighting or other setup here
||||||| parent of 02622ed (2025-02-17_12:51:03)
      -- print("Attached LSP:", client.name)
      -- this would disable semanticTokensProvider for all clients
      -- client.server_capabilities.semanticTokensProvider = nil
=======
      -- Additional customization for on_attach can be placed here
>>>>>>> 02622ed (2025-02-17_12:51:03)
    end,
  },
}
