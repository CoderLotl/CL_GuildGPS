CL_GPS = {}
CL_GPS.__index = CL_GPS

ZoneNames = {
    [1] = {
        [9] = "Durotar", [19] = "Mulgore", [26] = "The Barrens", [1] = "Ashenvale", [25] = "Teldrassil", [5] = "Darkshore",
        [23] = "Tanaris", [29] = "Un'Goro Crater", [21] = "Silithus", [12] = "Feralas", [10] = "Dustwallow Marsh", [22] = "Stonetalon Mountains",
        [18] = "Moonglade", [31] = "Winterspring", [2] = "Azshara", [27] = "Thousand Needles", [3] = "Blackstone Island", [24] = "Tel'Abim"
    },
    [2] = {
        [13] = "Elwynn Forest", [34] = "Tirisfal Glades", [27] = "Silverpine Forest", [37] = "Western Plaguelands",
        [12] = "Eastern Plaguelands", [31] = "Thalassian Highlands", [24] = "Scarlet Enclave", [33] = "The Hinterlands", [2] = "Alterac Mountains",
        [15] = "Gilneas", [18] = "Hillsbrad Foothills", [3] = "Arathi Highlands", [39] = "Wetlands", [17] = "Grim Reaches", [21] = "Loch Modan",
        [10] = "Dun Morogh", [26] = "Searing Gorge", [4] = "Badlands", [22] = "Northwind", [8] = "Burning Steppes", [23] = "Redridge Mountains",
        [11] = "Duskwood", [38] = "Westfall", [9] = "Deadwind Pass", [30] = "Swamp of Sorrows", [7] = "Blasted Lands", [29] = "Stranglethorn Vale",
        [5] = "Balor", [20] = "Lapidis Isle", [14] = "Gillijim's Isle"
    }
}

ZonePositions = {
    [1] = { -- Kalimdor
        ["Durotar"] = {x = 0.56, y = 0.42, width = 0.065, height = 0.12}, -- ✓
        ["Mulgore"] = {x = 0.36, y = 0.50, width = 0.11, height = 0.14}, -- ✓
        ["The Barrens"] = {x = 0.47, y = 0.42, width = 0.08, height = 0.25}, -- ✓
        ["Ashenvale"] = {x = 0.34, y = 0.36, width = 0.23, height = 0.06}, -- ✓
        ["Teldrassil"] = {x = 0.25, y = 0.11, width = 0.16, height = 0.095}, -- ✓        
        ["Darkshore"] = {x = 0.34, y = 0.2, width = 0.12, height = 0.16}, -- ✓
        ["Tanaris"] = {x = 0.50, y = 0.73, width = 0.12, height = 0.1},
        ["Un'Goro Crater"] = {x = 0.41, y = 0.73, width = 0.09, height = 0.10},
        ["Silithus"] = {x = 0.25, y = 0.73, width = 0.16, height = 0.13}, -- ✓
        ["Feralas"] = {x = 0.21, y = 0.56, width = 0.2, height = 0.17}, -- ✓
        ["Dustwallow Marsh"] = {x = 0.53, y = 0.56, width = 0.09, height = 0.09},
        ["Stonetalon Mountains"] = {x = 0.255, y = 0.38, width = 0.18, height = 0.11},
        ["Moonglade"] = {x = 0.48, y = 0.181, width = 0.06, height = 0.06},
        ["Winterspring"] = {x = 0.52, y = 0.175, width = 0.16, height = 0.15},
        ["Azshara"] = {x = 0.56, y = 0.316, width = 0.20, height = 0.12}, -- ✓
        ["Thousand Needles"] = {x = 0.41, y = 0.65, width = 0.2, height = 0.09},
        ["Blackstone Island"] = {x = 0.7, y = 0.47, width = 0.06, height = 0.05}, -- ✓
        ["Tel'Abim"] = {x = 0.672, y = 0.73, width = 0.06, height = 0.08},
    },
    [2] = { -- Eastern Kingdoms
        ["Elwynn Forest"] = {x = 0.42, y = 0.65, width = 0.15, height = 0.15},
        ["Tirisfal Glades"] = {x = 0.42, y = 0.12, width = 0.15, height = 0.15},
        ["Silverpine Forest"] = {x = 0.35, y = 0.2, width = 0.15, height = 0.18},
        ["Western Plaguelands"] = {x = 0.5, y = 0.15, width = 0.15, height = 0.15},
        ["Eastern Plaguelands"] = {x = 0.6, y = 0.15, width = 0.15, height = 0.15},
        ["Thalassian Highlands"] = {x = 0.55, y = 0.05, width = 0.12, height = 0.1}, -- Approximate TurtleWoW
        ["Scarlet Enclave"] = {x = 0.65, y = 0.1, width = 0.1, height = 0.1}, -- Approximate
        ["The Hinterlands"] = {x = 0.6, y = 0.25, width = 0.15, height = 0.15},
        ["Alterac Mountains"] = {x = 0.5, y = 0.3, width = 0.1, height = 0.1},
        ["Gilneas"] = {x = 0.35, y = 0.3, width = 0.12, height = 0.12},
        ["Hillsbrad Foothills"] = {x = 0.48, y = 0.3, width = 0.15, height = 0.15},
        ["Arathi Highlands"] = {x = 0.6, y = 0.35, width = 0.15, height = 0.15},
        ["Wetlands"] = {x = 0.55, y = 0.4, width = 0.15, height = 0.15},
        ["Grim Reaches"] = {x = 0.65, y = 0.4, width = 0.1, height = 0.1}, -- Approximate
        ["Loch Modan"] = {x = 0.55, y = 0.5, width = 0.1, height = 0.1},
        ["Dun Morogh"] = {x = 0.45, y = 0.5, width = 0.18, height = 0.15},
        ["Searing Gorge"] = {x = 0.4, y = 0.6, width = 0.1, height = 0.1},
        ["Badlands"] = {x = 0.5, y = 0.6, width = 0.15, height = 0.1},
        ["Northwind"] = {x = 0.6, y = 0.5, width = 0.1, height = 0.1}, -- Approximate
        ["Burning Steppes"] = {x = 0.42, y = 0.62, width = 0.12, height = 0.1},
        ["Redridge Mountains"] = {x = 0.52, y = 0.7, width = 0.12, height = 0.1},
        ["Duskwood"] = {x = 0.42, y = 0.75, width = 0.12, height = 0.12},
        ["Westfall"] = {x = 0.32, y = 0.7, width = 0.12, height = 0.12},
        ["Deadwind Pass"] = {x = 0.48, y = 0.8, width = 0.08, height = 0.08},
        ["Swamp of Sorrows"] = {x = 0.55, y = 0.75, width = 0.1, height = 0.1},
        ["Blasted Lands"] = {x = 0.48, y = 0.85, width = 0.12, height = 0.12},
        ["Stranglethorn Vale"] = {x = 0.35, y = 0.85, width = 0.18, height = 0.25},
        ["Balor"] = {x = 0.6, y = 0.8, width = 0.1, height = 0.1}, -- Approximate
        ["Lapidis Isle"] = {x = 0.65, y = 0.85, width = 0.1, height = 0.1}, -- Approximate
        ["Gillijim's Isle"] = {x = 0.7, y = 0.9, width = 0.1, height = 0.1}, -- Approximate
    }
}

function CL_GPS.newGPS()
    local instance = {}
    setmetatable(instance, CL_GPS)

    instance.characters = {}
    instance.mapDots = {}

    local function messageCallback(inc_msg)
        local _, _, zone, x, y, class, race, level, sender = string.find(inc_msg, "Zone:(.-)-X:(.-)-Y:(.-)-Class:(.-)-Race:(.-)-Level:(.-)-SentBy:(.+)")
        x = tonumber(x) or 0
        y = tonumber(y) or 0
        zone = zone or "Unknown"
        class = class or "Unknown"
        level = tonumber(level) or 0
        sender = sender or "Unknown"
        if sender == "Unknown" then
            -- PrintValue("Warning: Received message with unknown sender: " .. inc_msg)
            return
        end
        if sender ~= UnitName("player") then
            if instance.characters[sender] then
                instance.characters[sender]:update(zone, x, y, level)
            else
                instance.characters[sender] = CL_Char.new(sender, zone, x, y, class, race, level)
            end
            -- PrintValue("Processed sender: " .. sender) -- Debug to confirm sender
        end
    end

    instance.messenger = CL_Messenger.newMessenger('CL_GPS', messageCallback, 'GUILD')

    local function sendCallback()
        local zone = GetZoneText() or "Unknown"
        local class = UnitClass("player") or "Unknown"
        local level = UnitLevel("player") or 0
        local sender = UnitName("player") or "Unknown"
        local race = UnitRace("player") or "Unknown"

        -- Only set map context if World Map is not open
        if not WorldMapFrame:IsVisible() then
            SetMapToCurrentZone()
            local x, y = GetPlayerMapPosition("player")
            local message = "Zone:" .. zone .. "-X:" .. x .. "-Y:" .. y .. "-Class:" .. class .. "-Race:" .. race .. "-Level:" .. level .. "-SentBy:" .. sender
            -- PrintValue(message)
            CL_Messenger.Send(instance.messenger, message, 'GUILD')
        end        
    end

    instance.timer = CL_Timer.newTimer(1, 1, nil, sendCallback, nil, nil, true)

    local function rosterCheckCallback()        
        local numMembers = GetNumGuildMembers()
        local onlineMembers = {}
        for i = 1, numMembers do
            local name = GetGuildRosterInfo(i)
            if name then
                onlineMembers[name] = true                
            end
        end
        for sender, _ in pairs(instance.characters) do
            if not onlineMembers[sender] then                
                instance.characters[sender] = nil
                if instance.mapDots[sender] then
                    instance.mapDots[sender]:Hide()
                    instance.mapDots[sender] = nil
                end
            end
        end
    end
    instance.rosterFrame = CreateFrame("Frame")
    instance.rosterFrame:RegisterEvent("GUILD_ROSTER_UPDATE")
    instance.rosterFrame:SetScript("OnEvent", rosterCheckCallback)
    instance.rosterTimer = CL_Timer.newTimer(1, 1, nil, function() GuildRoster() end, nil, nil, true)

    ---------------------------------------------------------------------------------------------------------------

    local continentPositions = {        
        -- 0.091 0.080 0.399 0.868
        -- 0.627 0.027 0.923 0.870
        [1] = {x = 0.0, y = 0.0, width = 0.5, height = 1}, -- Kalimdor on left in world view
        [2] = {x = 0.5, y = 0.0, width = 0.5, height = 1}, -- Eastern Kingdoms on right
    }

    local zoneToContinent = {}
    for continent, zones in pairs(ZoneNames) do
        for _, name in pairs(zones) do
            zoneToContinent[name] = continent
        end
    end

    local function Measure()
        local b = WorldMapButton
        local cx, cy = GetCursorPosition()
        local s = b:GetEffectiveScale()
        local l, t = b:GetLeft(), b:GetTop()
        local w, h = b:GetWidth(), b:GetHeight()
        local nx = (cx / s - l) / w
        local ny = (t - cy / s) / h

        WorldMapTooltip:SetOwner(b, "ANCHOR_CURSOR")
        WorldMapTooltip:SetText(string.format("World coords: %.3f, %.3f", nx, ny))
        WorldMapTooltip:Show()
    end

    -- Run this once after loading your addon / UI
    instance.helper = false
    local function DrawWorldViewHelper()
        if instance.helper == false then
            instance.helper = true
            if _G["WorldViewHelper"] then
                _G["WorldViewHelper"]:Hide()
                _G["WorldViewHelper"] = nil
            end

            local helper = CreateFrame("Frame", "WorldViewHelper", WorldMapButton)
            helper:SetAllPoints()
            _G["WorldViewHelper"] = helper

            for continent, zones in pairs(ZonePositions) do
                local contPos = continentPositions[continent]
                if contPos then
                    for zoneName, pos in pairs(zones) do
                        local x = contPos.x + pos.x * contPos.width
                        local y = contPos.y + pos.y * contPos.height
                        local w = pos.width * contPos.width
                        local h = pos.height * contPos.height

                        local f = CreateFrame("Frame", nil, helper)
                        f:SetWidth(w * WorldMapButton:GetWidth())
                        f:SetHeight(h * WorldMapButton:GetHeight())  
                        -- Correct SetPoint usage
                        f:SetPoint("TOPLEFT", WorldMapButton, "TOPLEFT", x * WorldMapButton:GetWidth(), -y * WorldMapButton:GetHeight())

                        f:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background"})
                        f:SetBackdropColor(math.random(), math.random(), math.random(), 0.6)

                        local t = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
                        t:SetPoint("CENTER", f, "CENTER", 0, 0)
                        t:SetText(zoneName)
                    end
                end
            end
        end
    end

    ---------------------------------------------------------------------------------------------------------------

    local function updateMapDots()
        Measure()
        DrawWorldViewHelper()
        local continent = GetCurrentMapContinent()
        local zoneIndex = GetCurrentMapZone()
        local mapZone = "Unknown"
        if zoneIndex > 0 then
            mapZone = ZoneNames[continent] and ZoneNames[continent][zoneIndex] or "Unknown"
        end

        local mapWidth, mapHeight = WorldMapButton:GetWidth(), WorldMapButton:GetHeight()

        for sender, char in pairs(instance.characters) do
            local showDot = false
            local x, y = char.x, char.y

            if char.x > 0 and char.y > 0 then
                if continent == 0 then
                    -- World view: use normalized continent coordinates directly from API
                    local charContinent = zoneToContinent[char.zone] or 0
                    if charContinent > 0 then
                        local zPos = ZonePositions[charContinent][char.zone]
                        local cPos = continentPositions[charContinent]
                        if zPos and cPos then
                            -- normalized within zone -> normalized within continent
                            local continentNormX = zPos.x + zPos.width * char.x
                            local continentNormY = zPos.y + zPos.height * char.y
                            -- normalized within world
                            x = cPos.x + cPos.width * continentNormX
                            y = cPos.y + cPos.height * continentNormY
                            showDot = true
                        end
                    end
                else
                    -- Continental or zone view: keep existing logic
                    local charContinent = zoneToContinent[char.zone] or 0
                    if charContinent == continent then
                        local pos = ZonePositions[continent][char.zone]
                        if pos then
                            x = pos.x + pos.width * char.x
                            y = pos.y + pos.height * char.y
                            showDot = true
                        end
                    end
                end
            end

            if showDot then
                local dot = instance.mapDots[sender]
                if not dot then
                    dot = CreateFrame("Frame", nil, WorldMapButton)
                    dot:SetWidth(15)
                    dot:SetHeight(15)
                    dot:EnableMouse(true)
                    dot.senderName = sender
                    local texture = dot:CreateTexture(nil, "OVERLAY")
                    texture:SetAllPoints()
                    texture:SetTexture("Interface\\WorldMap\\WorldMapPartyIcon")
                    dot:SetScript("OnEnter", function()
                        if dot.senderName and instance.characters[dot.senderName] then
                            local char = instance.characters[dot.senderName]
                            WorldMapTooltip:SetOwner(dot, "ANCHOR_RIGHT")
                            WorldMapTooltip:SetText(char.name, 1, 1, 1)
                            WorldMapTooltip:AddLine("Race: " .. char.race, 1, 1, 0)
                            WorldMapTooltip:AddLine("Class: " .. char.class, 1, 1, 0)
                            WorldMapTooltip:AddLine("Level: " .. char.level, 1, 1, 0)
                            WorldMapTooltip:AddLine("Zone: " .. char.zone, 1, 1, 0)
                            WorldMapTooltip:AddLine("Coordinates: " .. string.format("%.2f, %.2f", char.x * 100, char.y * 100), 1, 1, 0)
                            WorldMapTooltip:Show()
                        end
                    end)
                    dot:SetScript("OnLeave", function() WorldMapTooltip:Hide() end)
                    instance.mapDots[sender] = dot
                end

                dot:SetPoint("CENTER", WorldMapButton, "TOPLEFT", x * mapWidth, -y * mapHeight)
                dot:Show()
            elseif instance.mapDots[sender] then
                instance.mapDots[sender]:Hide()
            end
        end
    end

    instance.mapFrame = CreateFrame("Frame")
    instance.mapFrame:RegisterEvent("WORLD_MAP_UPDATE")
    instance.mapFrame.lastUpdate = GetTime()
    instance.mapFrame:SetScript("OnUpdate", function()
        local currentTime = GetTime()
        if currentTime - instance.mapFrame.lastUpdate > 1 then
            if WorldMapFrame:IsVisible() then
                updateMapDots()
            else
                instance.helper = false
                for _, dot in pairs(instance.mapDots) do
                    dot:Hide()
                end
                WorldMapTooltip:Hide()
            end
            instance.mapFrame.lastUpdate = currentTime
        end
    end)
    
    return instance
end