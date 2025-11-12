-- e.g. `lua/plugins/iron.lua`
return {
  {
    "Vigemus/iron.nvim",
    -- you may choose to lazy-load on certain ft or commands if desired
    config = function()
      local iron = require("iron.core")
      iron.setup({
        config = {
          scratch_repl = true,
          repl_definition = {
            python = {
              command = { "ipython", "--no-autoindent" },
              format = require("iron.fts.common").bracketed_paste_python,
              block_dividers = { "#%%", "# %%" },
            },
            sh = {
              command = { "zsh" },
            },
            -- add more language definitions as needed
          },
          repl_open_cmd = "vertical botright 40 split",
        },
        keymaps = {
          toggle_repl = "<space>rr",
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_file = "<space>sf",
          send_line = "<M-l>",
          send_paragraph = "<space>sp",
          send_until_cursor = "<space>su",
          interrupt = "<space>s<space>",
          send_code_block = "<M-h>",
          exit = "<space>sq",
          clear = "<space>il",
        },
        highlight = { italic = true },
        ignore_blank_lines = true,
      })
      -- optional: map commands if you want
      vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<CR>")
      vim.keymap.set("n", "<space>rh", "<cmd>IronHide<CR>")
    end,
  },
}
