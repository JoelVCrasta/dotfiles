return {
  "numToStr/Comment.nvim",
  opts = {},
  config = function()
    require("Comment").setup({
      padding = true,
      sticky = true,
      ignore = "^$",
      toggler = {
        line = "<leader>c",
        block = "<leader>cb",
      },
      opleader = {
        line = "<leader>c",
        block = "<leader>cb",
      },
      mappings = {
        basic = true,
        extra = true,
        extended = false,
      },
    })
  end,
}
