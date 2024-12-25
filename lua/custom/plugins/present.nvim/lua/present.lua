local M = {}

M.setup = function() end

---@class present.Slides
---@field slides string[]: The slides of the file

--- Takes some lines and parses them.
---@param lines string[]: The lines in the buffer
---@return present.Slides
local parse_slides = function(lines)
  local slides = { slides = {} }
  for _, line in ipairs(lines) do
    print(line)
  end
  return slides
end

vim.print(parse_slides {
  '# Hello',
  'this is something else',
  '# World',
  'this is another thing',
})

return M
