local config = function()
  local telescope = require("telescope")
    telescope.setup({
      defaults = {
        mappings ={
          i = {
            ["C-j"] = "move_selection_next",
            ["C-k"] = "move_selection_previous",
          },
        },
      },
      pickers = {
        find_files = {
          previewer = true,
          hidden = true,
        },
        live_grep = {
          previewer = true,
        },
        find_buffers = {
          previewer = true,
        }
      },
    })
  end

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = config,
  keys = {
    vim.keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", {}),
		vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", {}),
		vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {}),
		vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", {}),
		vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", {}),
  },
}
