return {
  "mfussenegger/nvim-dap",
  config = function(_, _)
    local dap = require("dap")
    vim.keymap.set("n", "<F10>", function()
      dap.step_over()
    end)
    vim.keymap.set("n", "<F11>", function()
      dap.step_into()
    end)
    vim.keymap.set("n", "<F12>", function()
      dap.step_out()
    end)
  end,
}
