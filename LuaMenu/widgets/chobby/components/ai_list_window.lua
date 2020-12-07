AiListWindow = ListWindow:extends{}

local IMG_SETTINGS = LUA_DIRNAME .. "images/settings.png"

function AiListWindow:init(gameName)

	self:super('init', lobbyInterfaceHolder, "Choose AI", false, "main_window", nil, {6, 7, 7, 4})
	self.window:SetPos(nil, nil, 500, 700)

	self.validAiNames = {}

	-- Disable game-specific AIs for now since it breaks /luaui reload
	local ais = VFS.GetAvailableAIs(gameName)

	local blackList = Configuration.gameConfig.aiBlacklist
	local oldAiVersions = (not Configuration.showOldAiVersions) and Configuration.gameConfig.oldAiVersions
	local isRunning64Bit = Configuration:GetIsRunning64Bit()

	for i, ai in pairs(ais) do
		self:AddAiToList(ai, blackList, oldAiVersions, isRunning64Bit)
	end

end

function AiListWindow:CompareItems(id1, id2)
	local order = Configuration.simpleAiList and Configuration.gameConfig.simpleAiOrder
	if order then
		local pos1 = order[id1]
		local pos2 = order[id2]
		return pos1 and pos2 and pos1 < pos2
	end
	return true
end

function AiListWindow:AddAiToList(ai, blackList, oldAiVersions, isRunning64Bit)
	local shortName = ai.shortName or "Unknown"

	if blackList and blackList[shortName] then
		return
	end

	if (isRunning64Bit and string.find(shortName, "32")) or ((not isRunning64Bit) and string.find(shortName, "64")) then
		return
	end


	local version = " " .. ai.version
	if version == " <not-versioned>" then
		version = ""
	end
	local aiName = shortName .. version

	if oldAiVersions then
		for i = 1, #oldAiVersions do
			if string.find(aiName, oldAiVersions[i]) then
				return
			end
		end
	end

	local displayName = aiName
	if Configuration.simpleAiList and Configuration.gameConfig.GetAiSimpleName then
		displayName = Configuration.gameConfig.GetAiSimpleName(displayName)
		if not displayName then
			return
		end
	end

	self.validAiNames[shortName] = displayName

	local tooltip = nil
	if Configuration.gameConfig.aiTooltip then
		tooltip = Configuration.gameConfig.aiTooltip[displayName]
	end

	local buttonList = nil
	if Configuration.showAiOptions then
		local path = "AI/Skirmish/" .. shortName .. "/" .. ai.version .. "/AIOptions.lua"
		if VFS.FileExists(path) then
			buttonList = self:MakeAiOptionsButton(displayName, tooltip, shortName, ai.version, path)
		end
	end
	if buttonList == nil then
		buttonList = self:MakeAiButton(displayName, tooltip, shortName, ai.version)
	end
	self:AddRow(buttonList, displayName)
end

function AiListWindow:MakeAiOptionsButton(displayName, tooltip, shortName, version, path)
	local addAIButton = Button:New {
		x = 0,
		y = 0,
		width = "80%",
		height = "100%",
		caption = displayName,
		font = Configuration:GetFont(3),
		tooltip = tooltip,
		OnClick = {
			function()
				self:AddAi(displayName, shortName, version)
				self:HideWindow()
			end
		},
	}
	local optionsButton = Button:New {
		x = "80%",
		y = 0,
		width = "20%",
		height = "100%",
		caption = "",
		font = Configuration:GetFont(3),
		OnClick = {
			function()
				if self.lobby.name ~= "singleplayer" then
					-- Disable AIOptions in multiplayer:
					-- no protocol command exists to allow creation of startscript with AIOptions by autohost
					self:AddAi(displayName, shortName, version)
					self:HideWindow()
					return
				end
				local successFunc = function(aioptions)
					self:AddAi(displayName, shortName, version, aioptions)
					self:HideWindow()
				end
				WG.Chobby.AiOptionsWindow(displayName, path, successFunc)
			end
		},
	}
	local optionsImage = Image:New {
		x = "10%",
		y = "10%",
		width = "80%",
		height = "80%",
		file = IMG_SETTINGS,
		parent = optionsButton,
	}
	return {addAIButton, optionsButton}
end

function AiListWindow:MakeAiButton(displayName, tooltip, shortName, version)
	local addAIButton = Button:New {
		x = 0,
		y = 0,
		width = "100%",
		height = "100%",
		caption = displayName,
		font = Configuration:GetFont(3),
		tooltip = tooltip,
		OnClick = {
			function()
				self:AddAi(displayName, shortName, version)
				self:HideWindow()
			end
		},
	}
	return {addAIButton}
end

function AiListWindow:AddAi(displayName, shortName, version, options)
	local aiName
	local counter = 1
	local found = true
	while found do
		found = false
		aiName = displayName .. " (" .. tostring(counter) .. ")"
		-- Ubserver AI names cannot include whitespace
		if WG.Server.protocol == "spring" then
			aiName = aiName:gsub(" ", "")
		end
		for _, userName in pairs(self.lobby.battleAis) do
			if aiName == userName then
				found = true
				break
			end
		end
		counter = counter + 1
	end
	self.lobby:AddAi(aiName, shortName, self.allyTeam, version, options)
	Configuration:SetConfigValue("lastAddedAiName", shortName)
end

function AiListWindow:QuickAdd(shortName)
	if self.validAiNames[shortName] then
		self:AddAi(self.validAiNames[shortName], shortName)
		return true
	end
end

function AiListWindow:SetLobbyAndAllyTeam(lobby, allyTeam)
	self.lobby = lobby or self.lobby
	self.allyTeam = allyTeam or self.allyTeam
end
