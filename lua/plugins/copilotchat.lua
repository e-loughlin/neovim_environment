return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
      { "github/copilot.vim" },
    },
    build = "make tiktoken",
    opts = {
      -- 1. Model ID (kept as per your finding)
      model = "gemini-3-pro-preview",

      -- 2. Window Settings (The Fix)
      window = {
        layout = "vertical", -- Force vertical split (sidebar)
        width = 0.30, -- Width is 30% of the screen (adjust to 0.4 or 0.5 if you want it wider)
        -- Removed 'height' and 'border' as they are mostly for floats
      },

      -- 3. Standard Settings
      agent = "copilot",

      -- 4. Internal keymaps
      mappings = {
        complete = { insert = "<Tab>" },
        close = { normal = "q", insert = "<C-c>" },
        reset = { normal = "<C-r>", insert = "<C-r>" },
        submit_prompt = { normal = "<CR>", insert = "<C-s>" },
      },
    },
    config = function(_, opts)
      local chat = require "CopilotChat"
      local select = require "CopilotChat.select"
      chat.setup(opts)

      -- Custom Command for <leader>zZ
      vim.api.nvim_create_user_command("CopilotChatCmd", function()
        local input = vim.fn.input "Command to generate: "
        if input ~= "" then
          chat.ask("Provide a terminal command to: " .. input, {
            selection = select.none,
            system_prompt = "You are a command line expert. Provide only the shell command with no explanation. Do not use markdown blocks.",
          })
        end
      end, {})
    end,
  },
}
