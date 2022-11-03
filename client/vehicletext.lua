local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
	for _, v in pairs(QBCore.Shared.Vehicles) do
		local text
		if v["brand"] then
			text = v["brand"] .. " " .. v["name"]
		else
			text = v["name"]
		end
		if v['hash'] ~= 0 and v['hash'] ~= nil then
			AddTextEntryByHash(v["hash"],text)
		end
	end
end)

CreateThread(function()
	while true do
	for _,v in pairs(Config.Stations) do
	LockRadioStation(v,true)
	end
	Wait(0)
	end
end)
