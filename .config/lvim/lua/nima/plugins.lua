lvim.plugins = {
  {
    "giusgad/pets.nvim",
    requires = {
      "edluffy/hologram.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("pets").setup({
  row = 1, -- the row (height) to display the pet at (must be at least 1 and at most 10)
  col = 0, -- the column to display the pet at (set to high number to have it stay still on the right side)
  speed_multiplier = 1, -- you can make your pet move faster/slower. If slower the animation will have lower fps.
  default_pet = "cat", -- the pet to use for the PetNew command
  default_style = "brown", -- the style of the pet to use for the PetNew command
  random = false, -- wether to use a random pet for the PetNew command, ovverides default_pet and default_style
  death_animation = true, -- animate the pet's death, set to false to feel less guilt
  popup = { -- popup options, try changing these if you see a rectangle around the pets
    width = "30%", -- can be a string with percentage like "45%" or a number of columns like 45
    winblend = 100, -- winblend value - see :h 'winblend' - only used if avoid_statusline is false
    hl = { Normal = "Normal" }, -- hl is only set if avoid_statusline is true, you can put any hl group instead of "Normal"
    avoid_statusline = false, -- if winblend is 100 then the popup is invisible and covers the statusline, if that
    -- doesn't work for you then set this to true and the popup will use hl and will be spawned above the statusline (hopefully)
  }
})
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end
  },
  {
    "lambdalisue/suda.vim"
  },
  {
    'rktjmp/fwatch.nvim',
    config = function()
      local fwatch = require('fwatch')
      fwatch.watch("/home/nima/.cache/wal/colors", "colorscheme pywal")
    end
  },
  {
    "terrortylor/nvim-comment",
    config = function() require('nvim_comment').setup() end,
  },
  {
    'nmac427/guess-indent.nvim',
    config = function() require('guess-indent').setup {} end,
  },
  {
    "kevinhwang91/rnvimr",
    cmd = "RnvimrToggle",
    config = function()
      vim.g.rnvimr_draw_border = 1
      vim.g.rnvimr_pick_enable = 1
      vim.g.rnvimr_bw_enable = 1
    end,
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end
  },
  { "mg979/vim-visual-multi" },
  { "Galooshi/vim-import-js" },
  { "wakatime/vim-wakatime" },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require("colorizer").setup()
    end
  },
  {
    "ziontee113/color-picker.nvim",
    config = function()
      require("color-picker").setup()
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { 'mattn/emmet-vim' },
  { 'andweeb/presence.nvim',
    config = function()
      require("presence"):setup({
        -- General options
        auto_update        = true, -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
        neovim_image_text  = "Lunarvim based", -- Text displayed when hovered over the Neovim image
        main_image         = "file", -- Main image display (either "neovim" or "file")
        client_id          = "793271441293967371", -- Use your own Discord application client id (not recommended)
        log_level          = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
        debounce_timeout   = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
        enable_line_number = false, -- Displays the current line number instead of the current project
        blacklist          = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
        buttons            = true, -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
        file_assets        = {}, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
        show_time          = true, -- Show the timer

        -- Rich Presence text options
        editing_text        = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
        file_explorer_text  = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
        git_commit_text     = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
        plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
        reading_text        = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
        workspace_text      = "Working on %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
        line_number_text    = "Line %s out of %s", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
      })
    end
  },
  { 'tpope/vim-surround' },
  { 'AlphaTechnolog/pywal.nvim' },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
}
