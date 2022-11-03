-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686

CreateThread(function()
    while true do
        -- This is the Application ID (Replace this with you own)
	SetDiscordAppId('934941132377456641')

        -- Here you will have to put the image name for the "large" icon.
	SetDiscordRichPresenceAsset('capture_512x512')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Vicarious')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('capture_512x512')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('')

        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('Players: '..result..'/64')
        end)

        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Quick Connect!", "fivem://connect/cfx.re/join/z4yexd")
        SetDiscordRichPresenceAction(1, "Join The Discord!", "https://discord.gg/m7Km4kXghA")

        -- It updates every minute just in case.
	Wait(6000000)
    end
end)
