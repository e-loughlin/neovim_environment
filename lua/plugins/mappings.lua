return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          --
          -- Markdown
          ["<leader>mt"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview Toggle" },
          ["<leader>ms"] = { "<cmd>MarkdownPreviewStop<cr>", desc = "Markdown Preview Stop" },
          ["<leader>mp"] = { "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview" },
          
          
          -- ToggleTerm
          ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },

          ["<leader>tp"] = false,
          ["<leader>tf"] = false,
          ["<leader>th"] = false,
          ["<leader>tv"] = false,
          ["<leader>tn"] = false,
          ["<leader>tu"] = false,

          -- Trouble
          ["<leader>T"] = { "<cmd>Trouble document_diagnostics<cr>", desc = "Document Diagnostics" },
          

          -- ChatGPT
          ["<leader>zz"] = { "<cmd>ChatGPT<cr>", desc = "ChatGPT Chat Window" },
          ["<leader>zr"] = { name = "ChatGPT Run ..." },
          ["<leader>zra"] = { "<cmd>ChatGPTRun add_tests<cr>", desc = "Add Tests" },
          ["<leader>zrC"] = { "<cmd>ChatGPTRun code_readability_analysis<cr>", desc = "Code Readability Analysis" },
          ["<leader>zrc"] = { "<cmd>ChatGPTRun complete_code<cr>", desc = "Complete Code" },
          ["<leader>zrd"] = { "<cmd>ChatGPTRun docstring<cr>", desc = "Docstring" },
          ["<leader>zre"] = { "<cmd>ChatGPTRun explain_code<cr>", desc = "Explain Code" },
          ["<leader>zrf"] = { "<cmd>ChatGPTRun fix_bugs<cr>", desc = "Fix Bugs" },
          ["<leader>zrg"] = { "<cmd>ChatGPTRun grammar_correction<cr>", desc = "Grammar Correction" },
          ["<leader>zrk"] = { "<cmd>ChatGPTRun keywords<cr>", desc = "Keywords" },
          ["<leader>zro"] = { "<cmd>ChatGPTRun optimize_code<cr>", desc = "Optimize Code" },
          ["<leader>zrr"] = { "<cmd>ChatGPTRun roxygen_edit<cr>", desc = "Roxygen Edit" },
          ["<leader>zrs"] = { "<cmd>ChatGPTRun summarize<cr>", desc = "Summarize" },
          ["<leader>zrt"] = { "<cmd>ChatGPTRun translate<cr>", desc = "Translate" },
          ["<leader>zc"] = { "<cmd>ChatGPTCompleteCode<cr>", desc = "ChatGPT Complete Code" },
          ["<leader>za"] = { "<cmd>ChatGPTActAs<cr>", desc = "ChatGPT Act As" },
          ["<leader>ze"] = { "<cmd>ChatGPTEditWithInstructions<cr>", desc = "ChatGPT Edit With Instructions" },
        },
        t = {
          ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
          ["<C-/>"] = { "<cmd>Trouble Toggle<cr>", desc = "Toggle Trouble Diagnostics" }
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function()
              vim.lsp.buf.hover()
            end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function()
              vim.lsp.buf.declaration()
            end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
