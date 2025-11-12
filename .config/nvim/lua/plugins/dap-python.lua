return {
  "mfussenegger/nvim-dap-python",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    require("dap-python").setup("debugpy-adapter")
    local Util = require("lazyvim.util")
    local root = Util.root.get()
    table.insert(require("dap").configurations.python, {
      type = "python",
      request = "launch",
      name = "My custom launch configuration",

      -- `program` is what you'd use in `python <program>` in a shell
      -- If you need to run the equivalent of `python -m <module>`, replace
      -- `program = '${file}` entry with `module = "modulename"
      program = "${file}",

      console = "integratedTerminal",
      cwd = root,
      env = {
        PYTHONPATH = root,
      },
    })
  end,
}
