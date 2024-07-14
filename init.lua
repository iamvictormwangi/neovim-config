require("KikapuNvim")
-- init.lua

-- Function to scroll down the text
local function scroll_down()
  local win = vim.api.nvim_get_current_win()
  local row, col = unpack(vim.api.nvim_win_get_cursor(win) or { 1, 0 })
  local last_line = vim.api.nvim_buf_line_count(0)

  -- If the cursor is on the last line, do not scroll down
  if row >= last_line then
    return
  end

  vim.api.nvim_win_set_cursor(win, { row + 2, col })
  -- vim.api.nvim_feedkeys("zz", "n", false)
end

-- Variable to hold the timer
local timer = nil

-- Function to start the teleprompter
local function start_teleprompter(interval)
  interval = interval or 1000 -- Default to 1000ms if no argument is provided
  vim.cmd("normal gg")        -- Go to the top of the file
  timer = vim.loop.new_timer()
  timer:start(0, interval, vim.schedule_wrap(function()
    scroll_down()
  end))
end

-- Function to stop the teleprompter
local function stop_teleprompter()
  if timer then
    timer:stop()
    timer:close()
    timer = nil -- Set timer to nil to clear the reference
  end
end

-- Command to start teleprompter with a specified interval
vim.api.nvim_create_user_command("Teleprompter", function(opts)
  local interval = tonumber(opts.args)
  if not interval then
    interval = 3300 -- Default to 1000ms if the argument is not a number
  end
  start_teleprompter(interval)
end, { nargs = '?' })

vim.api.nvim_create_user_command("StopTeleprompter", stop_teleprompter, {})

vim.cmd [[
augroup markdown_wrap
  autocmd!
  autocmd FileType text setlocal textwidth=50
  autocmd FileType text setlocal wrap
  autocmd FileType text setlocal linebreak
augroup END

command! FormatText :setlocal textwidth=50 | normal ggVGgq

]]
