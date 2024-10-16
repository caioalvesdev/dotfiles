-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    --
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- ["<leader>ss"] = { ":%s/", desc = "Search and Replace RegExp" },
    ["<leader>ss"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Search and Replace RegExp" },
    -- ["<leader>ss"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Search Word RegExp" },
    ["<C-p>"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- ui
    ["<leader>uT"] = { "<cmd>TransparentEnable<cr>", desc = "Enable background transparency" },
    -- neotree
    ["<leader>E"] = { "<cmd>Neotree toggle buffers<cr>", desc = "Toggle Buffers Explorer" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- Paste over currently selected text without yanking it
    ["p"] = { '"_dP' },

    ["<"] = { "<gv" },
    [">"] = { ">gv" },
  },
  x = {
    ["J"] = { ":m '>+1<cr>gv=gv" },
    ["K"] = { ":m '<-2<cr>gv=gv" },
    ["<A-J>"] = { ":m '>+1<cr>gv=gv" },
    ["<A-K>"] = { ":m '<-2<cr>gv=gv" },
  },
}
