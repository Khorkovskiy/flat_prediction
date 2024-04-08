VORP = exports.vorp_inventory:vorp_inventoryApi()
TriggerEvent("getCore", function(core)
    VorpCore = core
end)

VORP.RegisterUsableItem(Config.FortuneCookies, function(data)
	VORP.subItem(data.source, Config.FortuneCookies, 1)
	local name = Config.ItemPaper
	Wait(10)
	
	local rand = math.random(1, #Config.KK)
	Wait(10)
	VORP.CloseInv(data.source)
	TriggerClientEvent("flat_Prediction:open", data.source)
	Wait(10)
	VORP.addItem(data.source, name, 1,
	{
	  description = "</span><span style='color:Gray;'> "..Config.Translate.Prediction.."  </span><br><span style='color:Gold;'>   ♦ "..Config.KK[rand].." ♦"

	})
	Wait(10)
	Citizen.Wait(1700)

	TriggerClientEvent("flat_Prediction:eat", data.source)
	Wait(500)
	VorpCore.NotifyAvanced(data.source, Config.Translate.AddItem,"INVENTORY_ITEMS", "kit_player_pocketwatch",	"COLOR_WHITE", 1000, 1, false)
	VorpCore.NotifyAvanced(data.source, "~m~"..Config.Translate.Prediction.."~t4~ "..Config.KK[rand],"INVENTORY_ITEMS", "kit_player_pocketwatch",	"COLOR_WHITE", 5000, 1, false)

end)



