local PATROL

RegisterCommand("setaop", function(source, args, rawCommand)
  local newAOP = table.concat(args, " ")
  PATROL = newAOP
  TriggerClientEvent("aop:update", -1, PATROL)
end, true)

RegisterServerEvent('request')
AddEventHandler('request', function()
  TriggerClientEvent("aop:update", source, PATROL)
end)
