local M = {}

local function trim(s)
    return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end

local function read_theme_name()
    local path = os.getenv("HOME") .. "/.config/quickshell/config/settings.conf"
    local f = io.open(path, "r")
    if not f then
        return "dark"
    end

    for line in f:lines() do
        local key, value = line:match("^([%w_]+)%s*=%s*(.+)$")
        if key == "themeName" and value then
            local name = trim(value):lower()
            if name:find("light", 1, true) then
                f:close()
                return "light"
            end
            f:close()
            return "dark"
        end
    end

    f:close()
    return "dark"
end

function M.current()
    return read_theme_name()
end

function M.is_light()
    return M.current() == "light"
end

return M
