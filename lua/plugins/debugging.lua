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
      {
        "mfussenegger/nvim-dap-python",
        config = function()
          require("dap-python").setup("python")
        end,
      },
    },
    keys = function()
      vim.fn.sign_define("DapBreakpoint", { text = "🔵", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_define("DapStopped", { text = "⛔", texthl = "", linehl = "", numhl = "" })

      local dap = require("dap")
      local dapui = require("dapui")
      vim.keymap.set("n", "<Leader>dh", dap.run_last, {
        desc = "run last",
      })
      vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {
        desc = "toggle breakpoint",
      })
      vim.keymap.set("n", "<Leader>dl", dap.continue, {
        desc = "continue or start debugger",
      })
      vim.keymap.set("n", "<Leader>dj", dap.step_over, {
        desc = "step over",
      })
      -- vim.keymap.set("n", "<Leader>d<enter>", function()
      -- 	require("dap").step_into()
      -- end)
      -- vim.keymap.set("n", "<Leader>dk", function()
      -- 	require("dap").step_out()
      -- end)
      vim.keymap.set("n", "<Leader>ds", ":DapNew<CR>", {
        desc = "start debug session",
      })
      vim.keymap.set("n", "<Leader>dd", dapui.toggle, {
        desc = "open dapui",
      })
      vim.keymap.set("n", "<Leader>dr", dap.repl.toggle, {
        desc = "open repl",
      })
      vim.keymap.set("n", "<Leader>de", ":DapEval<CR>", {
        desc = "open evaluation editor",
      })

      vim.keymap.set("n", "<Leader>dx", dap.terminate, {
        desc = "terminate debug session",
      })
    end,
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      -- dap.configurations.python = {
      --   {
      --     type = "python",
      --     request = "launch",
      --     name = "Launch Python Script 2",
      --     program = "${file}",
      --     args = function()
      --       return vim.fn.input("Enter script parameters: "):split(" ")
      --     end,
      --     console = "integratedTerminal",
      --   },
      --   {
      --     type = "python",
      --     request = "launch",
      --     name = "Launch Python Script",
      --     program = "${file}",
      --     args = function()
      --       return vim.fn.input("Enter script parameters: "):split(" ")
      --     end,
      --     console = "integratedTerminal",
      --   },
      -- }

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
