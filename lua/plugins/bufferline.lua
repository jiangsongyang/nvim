return {
  "akinsho/bufferline.nvim",
  keys = function()
    return {
      { "<S-h>", mode = { "n" }, false },
      { "<S-l>", mode = { "n" }, false },
      { "<Leader>h", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "<Leader>l", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    }
  end,
}
