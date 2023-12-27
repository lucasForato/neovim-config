--@type MappingsTable
local M = {}

M.general = {
  n = {
    -- cycle through buffers
    ["<leader>."] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Next buffer",
    },

    ["<leader>,"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Previous buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>x"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },

    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fs"] = { ":w<cr>", "Save file", opts = { nowait = true } },
    ["<leader>e"] = { ":NvimTreeToggle<cr>", "Toggle Explorer", opts = { nowait = true } },

    -- terminals
    ["<c-1>"] = {
      function()
        require("nvterm.terminal").toggle "float"
        vim.cmd [[startinsert]]
      end,
      "Toggle Floating terminal",
      opts = { nowait = true },
    },
    ["<c-Esc>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle Vertical terminal",
      opts = { nowait = true },
    },
    ["<c-`>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle Horizontal terminal",
      opts = { nowait = true },
    },

    -- SOAP BINDINGS
    ["<leader>ts"] = {
      function()
        require("nvterm.terminal").send("int", "horizontal")
      end,
      "Start SOAP Interviewer Project",
    },

    ["<leader>tb"] = {
      function()
        require("nvterm.terminal").toggle "float"
        require("nvterm.terminal").send("int --build", "float")
      end,
      "Build SOAP Interviewer Project",
    },
  },
  t = {
    ["<c-1>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle Horizontal terminal",
      opts = { nowait = true },
    },
    ["<c-Esc>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle Vertical terminal",
      opts = { nowait = true },
    },
    ["<c-`>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle Horizontal terminal",
      opts = { nowait = true },
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
-- ["<leader>h"] = {
--       function()
--         require("nvterm.terminal").new "horizontal"
--       end,
--       "New horizontal term",
--     },
--
--     ["<leader>v"] = {
--       function()
--         require("nvterm.terminal").new "vertical"
--       end,
--       "New vertical term",
--     },
