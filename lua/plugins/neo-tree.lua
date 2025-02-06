return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree in current buffer (cwd)",
    },
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = false, dir = vim.fn.expand("%:p:h"), position = "current" })
      end,
      desc = "Explorer NeoTree in current buffer (Root Dir)",
    },
    {
      "<leader>E",
      function()
        require("neo-tree.command").execute({ toggle = false, dir = vim.uv.cwd(), position = "current" })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({ source = "git_status", toggle = true })
      end,
      desc = "Git Explorer",
    },
    {
      "<leader>be",
      function()
        require("neo-tree.command").execute({ source = "buffers", toggle = true })
      end,
      desc = "Buffer Explorer",
    },
  },
  opts = {
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(arg)
          vim.cmd([[setlocal relativenumber]])
        end,
      },
    },
  },
}
