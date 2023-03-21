return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        find_files = {
          -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          find_command = { "rg", "--files", "--glob", "!**/.git/*", "-L" },
        },
      },
    },
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}

-- Custom ripgrep configuration:

-- I want to search in hidden/dot files.
-- "--hidden"
--
-- I don't want to search in the `.git` directory.
-- "--glob")
-- "!**/.git/*")
--
--  I want to follow symbolic links
-- "-L"
--
