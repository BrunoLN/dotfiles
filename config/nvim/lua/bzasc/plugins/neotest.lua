return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python"),
      },
    })
    --    require("neotest").setup({
    --      adapters = {
    --        require("neotest-python")({
    --          --          dap = { justMyCode = false },
    --          args = { "--log-level", "DEBUG" },
    --          runner = "pytest",
    --          python = "~/.pyenv/versions/debugpy/bin/python",
    --          pytest_discover_instances = true,
    --        }),
    --      },
    --    })
    vim.keymap.set("n", "<Leader>mr", ":lua require('neotest').run.run()<CR>")
    vim.keymap.set("n", "<Leader>md", ":lua require('neotest').run.run({ strategy = 'dap' })<CR>")
    vim.keymap.set("n", "<Leader>mo", ":lua require('neotest').output.open()<CR>")
    vim.keymap.set("n", "<Leader>mO", ":lua require('neotest').output.open({ enter = true })<CR>")
  end,
}
