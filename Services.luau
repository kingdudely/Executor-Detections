local RunService = game:GetService("RunService")
if RunService:IsStudio() or not RunService:IsClient() then
	return
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local detectedServices = {
	"AppUpdateService",
	"AccountService",
	"DataModelPatchService",
	"OmniRecommendationsService",
}

local function detected()
	-- IDK
end

RunService.PreRender:Connect(function()
	for _, name in detectedServices do
		name += "\000"

		if game:FindService(name) then
			detected()
			break
		end
	end
end)
