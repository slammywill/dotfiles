require("plugins.specs")

local config_dir = vim.fn.stdpath("config") .. "/lua/plugins/config"

for _, file in ipairs(vim.fn.readdir(config_dir)) do
    if file:sub(-4) == ".lua" then
        require("plugins.config." .. file:gsub("%.lua$", ""))
    end
end
