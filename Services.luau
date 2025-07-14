local RunService = game:GetService("RunService")
if RunService:IsStudio() or not RunService:IsClient() then
	return
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local detectedServices = {
	"UGCValidationService", --
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
		if game:FindService(name) or game:FindService(name + "\000") then
			detected()
			break
		end
	end
end)
