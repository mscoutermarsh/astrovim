return {
  "vim-test/vim-test",
  init = function()
    vim.g["test#strategy"] = "vimux"
  end,
}
