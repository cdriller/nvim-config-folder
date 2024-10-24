return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        config = true,
        dependencies = {
          "nvim-neotest/nvim-nio",
        },
      },
      {
        "leoluz/nvim-dap-go",
        config = true,
      },
    },
    keys = function()
      vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })

      local dap = require("dap")
      vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {
        desc = "toggle breakpoint",
      })
      vim.keymap.set("n", "<Leader>dc", dap.continue, {
        desc = "continue debugger",
      })
    end,
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  {},
}
