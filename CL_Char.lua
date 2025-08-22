CL_Char = {}
CL_Char.__index = CL_Char

function CL_Char.new(name, zone, x, y, class, race, level)
    local instance = {}
    setmetatable(instance, CL_Char)
    instance.name = name or "Unknown"
    instance.zone = zone or "Unknown"
    instance.x = tonumber(x) or 0
    instance.y = tonumber(y) or 0
    instance.class = class or "Unknown"
    instance.race = race or "Unknown"
    instance.level = tonumber(level) or 0
    return instance
end

function CL_Char:update(zone, x, y, level)
    self.zone = zone or "Unknown"
    self.x = tonumber(x) or 0
    self.y = tonumber(y) or 0
    self.level = tonumber(level) or 0
end