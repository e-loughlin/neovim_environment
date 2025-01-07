return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require "telescope.actions"
      local action_state = require "telescope.actions.state"

      -- Function to delete buffers inside Telescope
      local function delete_buf(prompt_bufnr)
        local current_picker = action_state.get_current_picker(prompt_bufnr)
        local multi_selections = current_picker:get_multi_selection()

        actions.close(prompt_bufnr)

        if next(multi_selections) == nil then
          local selection = action_state.get_selected_entry()
          if selection then vim.api.nvim_buf_delete(selection.bufnr, { force = true }) end
        else
          for _, selection in ipairs(multi_selections) do
            vim.api.nvim_buf_delete(selection.bufnr, { force = true })
          end
        end
      end

      -- Function to override the default buffer picker behavior
      opts.extensions = opts.extensions or {}
      opts.extensions.custom_buffers = function()
        require("telescope.builtin").buffers(require("telescope.themes").get_dropdown {
          previewer = false,
          attach_mappings = function(prompt_bufnr, map)
            map("i", "<C-r>", delete_buf)
            map("n", "<C-r>", delete_buf)
            return true
          end,
        })
      end

      -- Ensure mappings exist
      opts.mappings = opts.mappings or {}
      opts.mappings.i = opts.mappings.i or {}
      opts.mappings.n = opts.mappings.n or {}

      -- Default buffer deletion shortcut
      opts.mappings.i["<C-x>"] = delete_buf
      opts.mappings.n["<C-x>"] = delete_buf
    end,
  },
}
