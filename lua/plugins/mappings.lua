return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<leader>q"] = { "<cmd>qall<cr>", desc = "Quit all" },
          ["<leader>w"] = { "<cmd>update<cr>", desc = "Write" },
          ["<leader>gs"] = { "<cmd>Git<cr>", desc = "Git" },
          ["<leader>s"] = { "<cmd>TestNearest<cr>", desc = "Test nearest" },
          ["<leader>t"] = { "<cmd>TestFile<cr>", desc = "Test file" },
          ["<F9>"] = { "<cmd>Neotree toggle source=filesystem<cr>", desc = "Open file tree" },
          ["<C-s>"] = { "<cmd>Telescope live_grep<cr>", desc = "Live find word" },
          ["<C-p>"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
          ["<s-k>"] = { function() require("telescope.builtin").grep_string() end, desc = "Find word" },
          ["<leader>bD"] = {
            function()
              require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  }
}
