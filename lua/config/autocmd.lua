local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Remove autocomment new line
autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- Remove trailing whitespace on save
local trim_group = augroup("TrimWhiteSpaceGrp", { clear = true })
autocmd("BufWritePre", {
  command = [[:%s/\s\+$//e]],
  group = trim_group
})

-- Highlight selection on yank
autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Go to last location when opening a buffer
autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)

    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Fast quit in man file type
autocmd("FileType", {
  pattern = { "man", "help", "lspinfo" },
  command = [[nnoremap <buffer><silent> q :quit<CR>]]
})

-- Enable spell checking for certain file types
autocmd(
  { "BufRead", "BufNewFile" },
  {
    pattern = { "*.txt", "*.md", "*.tex" },
    callback = function()
      vim.opt.spell = true
      vim.opt.spelllang = "en_us,ru_ru"
    end,
  }
)


