if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- autocmd
vim.api.nvim_create_autocmd({ "FileType" }, {

  pattern = { "c", "cc", "cpp", "h", "hh", "py" },

  callback = function()
    vim.opt.tabstop = 4

    vim.opt.expandtab = true

    vim.opt.softtabstop = 4

    vim.opt.shiftwidth = 4
  end,
})
