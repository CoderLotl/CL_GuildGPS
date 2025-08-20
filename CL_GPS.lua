CL_GPS = {}
CL_GPS.__index = CL_GPS

function CL_GPS.newGPS()
    local instance = {}
    setmetatable(instance, CL_GPS)

    instance.characters = {}
    instance.mapDots = {}

    local function messageCallback(inc_msg)
        local _, _, zone, x, y, sender = string.find(inc_msg, "Zone:(.-)-X:(.-)-Y:(.-)-SentBy:(.+)")
        x = tonumber(x) or 0
        y = tonumber(y) or 0
        zone = zone or "Unknown"
        sender = sender or "Unknown"
        if sender ~= UnitName("player") then
            if instance.characters[sender] then
                instance.characters[sender]:update(zone, x, y)
            else
                instance.characters[sender] = CL_Char.new(sender, zone, x, y)
            end            
        end
    end

    instance.messenger = CL_Messenger.newMessenger('CL_GPS', messageCallback, 'GUILD')

    local function sendCallback()
        local zone = GetZoneText() or "Unknown"
        local x, y = GetPlayerMapPosition("player")
        local sender = UnitName("player") or "Unknown"
        local message = "Zone:" .. zone .. "-X:" .. x .. "-Y:" .. y .. "-SentBy:" .. sender
        CL_Messenger.Send(instance.messenger, message, 'GUILD')
    end

    instance.timer = CL_Timer.newTimer(2, 1, nil, sendCallback, nil, nil, true)

    local function rosterCheckCallback()
        local numMembers = GetNumGuildMembers()
        local onlineMembers = {}
        for i = 1, numMembers do
            local name, _, _, _, _, _, _, _, online = GetGuildRosterInfo(i)
            if online then
                onlineMembers[name] = true
            end
        end
        for sender, _ in pairs(instance.characters) do
            if not onlineMembers[sender] then
                instance.characters[sender] = nil
            end
        end
    end

    instance.rosterTimer = CL_Timer.newTimer(10, 10, nil, rosterCheckCallback, nil, nil, true)

    local function updateMapDots()
        local continent = GetCurrentMapContinent()
        local zoneIndex = GetCurrentMapZone()
        local mapZone = "Unknown"
        if zoneIndex > 0 then
            local zoneNames = {
                [1] = {
                    [9] = "Durotar", [19] = "Mulgore", [26] = "The Barrens", [1] = "Ashenvale", [25] = "Teldrassil", [5] = "Darkshore",
                    [23] = "Tanaris", [29] = "Un'Goro Crater", [21] = "Silithus", [12] = "Feralas", [10] = "Dustwallow Marsh", [22] = "Stonetalon Mountains",
                    [18] = "Moonglade", [31] = "Winterspring", [2] = "Azshara", [27] = "Thousand Needles", [3] = "Blackstone Island", [24] = "Tel'Abim"
                },
                [2] = {
                    [13] = "Elwynn Forest", [34] = "Tirisfal Glades", [27] = "Silverpine Forest", [37] = "Western Plaguelands",
                    [12] = "Eastern Plaguelands", [31] = "Thalassian Highlands", [24] = "Scarlet Enclave", [33] = "The Hinterlands", [2] = "Alterac Mountains",
                    [15] = "Glineas", [18] = "Hillsbrad Foothills", [3] = "Arathi Highlands", [39] = "Wetlands", [17] = "Grim Reaches", [21] = "Loch Modan",
                    [10] = "Dun Morogh", [26] = "Searing Gorge", [4] = "Badlands", [22] = "Northwind", [8] = "Burning Steppes", [23] = "Redridge Mountains",
                    [11] = "Duskwood", [38] = "Westfall", [9] = "Deadwind Pass", [30] = "Swamp of Sorrows", [7] = "Blastedlands", [29] = "Stanglethorn Vale",
                    [5] = "Balor", [20] = "Lapidis Isle", [14] = "Gillijim's Isle"
                }
            }
            mapZone = zoneNames[continent] and zoneNames[continent][zoneIndex] or "Unknown"
        end
        for sender, char in pairs(instance.characters) do
            local showDot = false
            local x, y = char.x, char.y
            if char.x > 0 and char.y > 0 then
                if zoneIndex > 0 and char.zone == mapZone then
                    -- Zone map: Use raw coordinates
                    showDot = true
                end
            end
            if showDot then
                local dot = instance.mapDots[sender]
                if not dot then
                    dot = CreateFrame("Frame", nil, WorldMapButton)
                    dot:SetWidth(15)
                    dot:SetHeight(15)
                    local texture = dot:CreateTexture(nil, "OVERLAY")
                    texture:SetAllPoints()
                    texture:SetTexture("Interface\\WorldMap\\WorldMapPartyIcon")
                    instance.mapDots[sender] = dot
                end
                -- Position dot, try WorldMapButton
                dot:SetPoint("CENTER", WorldMapButton, "TOPLEFT", x * WorldMapButton:GetWidth(), -y * WorldMapButton:GetHeight())
                dot:Show()
            else
                if instance.mapDots[sender] then
                    instance.mapDots[sender]:Hide()
                end
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
                for _, dot in pairs(instance.mapDots) do
                    dot:Hide()
                end
            end
            instance.mapFrame.lastUpdate = currentTime
        end
    end)

    return instance
end