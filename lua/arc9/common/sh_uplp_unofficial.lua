local conVars = {
    {name = "uplp_rebalance_shotgun", default = "1", replicated = true },
}

for _, var in ipairs(conVars) do
    local convar_name = "arc9_" .. var.name

    if var.client and CLIENT then
        CreateClientConVar(convar_name, var.default, true, var.userinfo)
    else
        local flags = FCVAR_ARCHIVE
        if var.replicated then
            flags = flags + FCVAR_REPLICATED
        end
        if var.userinfo then
            flags = flags + FCVAR_USERINFO
        end
        CreateConVar(convar_name, var.default, flags, var.helptext, var.min, var.max)
    end
end

if CLIENT then
    timer.Simple(1, function()
    
        local polysettings = {
            TabName = "Polyarms Unofficial",
            sv = true,
            { type = "label", text = "Polyarms Unofficial Settings" },

            { sv = true, type = "bool", text = "Shotgun Rebalance", convar = "uplp_rebalance_shotgun", desc = "Stat tweaks for shotguns to make them more powerful. For people who think they should be able to one tap in close quarters. \nRequires restart." },

        }
        
        table.insert(ARC9.SettingsTable, 333, polysettings)
    
    end)
end

local function POLYUF()

	if GetConVar("arc9_uplp_rebalance_shotgun"):GetBool() then

		local spas15 = weapons.GetStored("arc9_uplp_spas15")
		spas15.DamageMax = 50
		spas15.DamageMin = 25
		spas15.RangeMin = 8 / ARC9.HUToM
		
		local db = weapons.GetStored("arc9_uplp_dbs")
		db.RangeMax = 40 / ARC9.HUToM
		db.RangeMin = 15 / ARC9.HUToM
		
		local mossberg = weapons.GetStored("arc9_uplp_m590")
		mossberg.DamageMax = 105
		mossberg.DamageMin = 36
		mossberg.RangeMin = 10 / ARC9.HUToM
		
		local r870 = weapons.GetStored("arc9_uplp_r870")
		r870.DamageMax = 105
		r870.DamageMin = 36
		r870.RangeMin = 10 / ARC9.HUToM
		
		local spas12 = weapons.GetStored("arc9_uplp_spas")
		spas12.DamageMax = 70
		spas12.DamageMin = 28
		spas12.RangeMin = 8 / ARC9.HUToM
		spas12.Spread = 0.042 * 1.25
		spas12.Firemodes = {
			{
				Mode = 1, -- Pump
				PrintName = ARC9:GetPhrase("uplp_firemode_pump"),
				ManualAction = true,
				ManualActionNoLastCycle = true,
				NoShellEjectManualAction = true,
				uplp_semi = true,
				SuppressEmptySuffix = true,
				DispersionSpreadAddHipFire = -0.02,
				Spread = 0.032 * 1.45,
				DamageMax = 105,
				RPM = 575,
			},
			{
				Mode = 1, -- Semi
				ManualAction = false,
			},
		}
		
		local molot = weapons.GetStored("arc9_uplp_molot")
		molot.DamageMax = 48
		molot.RangeMin = 8 / ARC9.HUToM
		
		local ks23 = weapons.GetStored("arc9_uplp_ks23")
		ks23.DamageMin = 50
		ks23.RangeMin = 6 / ARC9.HUToM	
		
	end

end

hook.Add("PreGamemodeLoaded", "ARC9_POLYUF", function()
    POLYUF()
end)