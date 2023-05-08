local options = {
  -- general
  hidden = true,                                -- let buffers to be hidden instead of closed
  undofile = true,                              -- let edit history be written to undo cache file
  spell = false,                                -- disable spell-checking (will be enabled with autocmd)
  spelllang = {"en_us", "ru_ru"},               -- set spell-checking languages
  clipboard = "unnamedplus",                    -- set system clipboard to be default register
  modeline = false,                             -- disable file-specific settings in headers
  mouse = "a",                                  -- enable mouse interactions
  -- files
  confirm = true,                               -- add confirmation for dangerous actions
  fileencoding = "utf-8",                       -- write all files with utf-8 encoding
  autoread = true,                              -- automatically read changed file
  backup = false,                               -- disable backup files
  swapfile = false,                             -- disable swap files
  writebackup = false,                          -- disable writing to already opened for write files
  -- ui
  title = true,                                 -- add current buffer name in window title
  visualbell = true,                            -- set error bells to be visual instead of sound or beep
  termguicolors = true,                         -- set terminal gui colors (needs to be supported)
  scrolloff = 8,                                -- set offset for vertical scrolling
  sidescrolloff = 8,                            -- set offset for horizontal scrolling
  showtabline = 0,                              -- always show tab line
  cmdheight = 1,                                -- more space in the command line for messages
  guifont = "ComicCodeLigatures Nerd Font:h14", -- set font family and size for Neovide
  laststatus = 3,                               -- show statusline only in last opened buffer/window
  -- editor ui
  background = "dark",                          -- set dark theme
  splitbelow = true,                            -- force all horizontal splits to go below current
  splitright = true,                            -- force all vertical splits to go to the right of current
  signcolumn = "yes",                           -- add special column for indicators before line numbers
  wrap = false,                                 -- display lines as one long line without line breaking
  number = true,                                -- add line numbers
  numberwidth = 4,                              -- line numbers panel width
  relativenumber = true,                        -- let line numbers be relative to current line
  cursorline = true,                            -- highlight current line
  ruler = false,                                -- hide line:column text because we use lualine
  showcmd = false,                              -- hide last command in status line
  showmode = false,                             -- hide editor mode because we use lualine
  -- indentation
  tabstop = 2,                                  -- insert 2 spaces for a tab
  expandtab = true,                             -- convert tabs to spaces
  shiftwidth = 2,                               -- number of spaces for indentation
  shiftround = true,                            -- round indentation to tabstop amount of symbols
  autoindent = true,                            -- copy indent from current line
  smartindent = true,                           -- make indentation smart again
  -- search
  hlsearch = true,                              -- highlight all matches on search pattern
  ignorecase = true,                            -- ignore case in search patterns
  smartcase = true,                             -- disable ignore case if capital letter has seen
  -- completion
  wildmode = {"longest:full", "full"},          -- set completion priority to longest common word
  pumheight = 10,                               -- set popup menu height
  updatetime = 100,                             -- faster completion and highlighting
  timeoutlen = 100,                             -- faster, faster, faster!
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
