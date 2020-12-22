--[[
	https://github.com/DevHades
--]]

local Time_Between = 600000 -- Set Time In Milli Seconds

Announcement_Prefix = "^*^7(^1Broadcast^7)^r "

-- Messages To Send To All Users
Announcement_Messages = {
	"Dont Forget To Join The Discord! ^1|| ^7discord.gg/BKmawVJ", 
	"Donate For Amazing Rewards! ^1|| ^7www.patreon.com/Hrizonrp",
	"Server Reboot @ Both 7am & 7pm^1!"
}

Citizen.CreateThread(function()
  while true do
  	Citizen.Wait(Time_Between)
  	TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px;">'.. Announcement_Prefix .. Announcement_Messages[math.random(#Announcement_Messages)] ..'</div>'
    })
    end
end)
