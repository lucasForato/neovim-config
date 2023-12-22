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
    ["<C-1>"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New Horizontal terminal",
      opts = { nowait = true },
    },
    ["<C-2>"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New Vertical terminal",
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
