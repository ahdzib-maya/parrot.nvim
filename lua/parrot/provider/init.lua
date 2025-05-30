local MultiProvider = require("parrot.provider.multi_provider")
local logger = require("parrot.logger")

local M = {}

---@param config table # Provider configuration
---@return table # returns initialized provider
M.init_provider = function(config)
  assert(config.name, "config.name is required")
  assert(config.endpoint, "config.endpoint is required")
  assert(config.models, "config.model or config.models required")
  
  -- MultiProvider now handles Anthropic Max Plan validation internally
  return MultiProvider:new(config)
end

return M
