-- spas15 attachas

local iconfolder = "entities/uplp_attachements/sg510/"

-- stendy mag

ATT = {}

ATT.SortOrder = 1

ATT.PrintName = "32-Round Extended"
ATT.CompactName = "32R Ext"
ATT.Description = "32-round extended magazine used on lightmachine guns."

ATT.Icon = Material(iconfolder .. "mag8.png", "mips smooth")
ATT.Category = "uplp_sg510_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_sg510_mag_ext"}

ATT.ClipSizeOverride = 32
ATT.ReloadTimeMult = 1.15

--ATT.DropMagazineModelOverride = "models/weapons/arc9/magazines/spas15_mag_8.mdl"

ARC9.LoadAttachment(ATT, "uplp_sg510_mag_ext")


-- 510-4

ATT = {}

ATT.SortOrder = 2

ATT.PrintName = "20-Round 7.62 NATO Magazine"
ATT.CompactName = "20R 7.62"
ATT.Description = "Converts the weapon into the AMT 57, an export variant chambered for 7.62 NATO. \nEquipped with a 20-round magazine."

ATT.Icon = Material(iconfolder .. "mag8.png", "mips smooth")
ATT.Category = "uplp_sg510_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_sg510_mag_762"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_20"
end

ATT.ClipSizeOverride = 20
ATT.RPMOverride = 575

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 1.1

ATT.DropMagazineModelOverride = "models/weapons/arc9/uplp/fal_mag_20.mdl"

ARC9.LoadAttachment(ATT, "uplp_sg510_mag_762")


-- wood stock

ATT = {}

ATT.PrintName = "Wooden AMT Stock"
ATT.CompactName = "WOOD"
ATT.Description = "Replaces the plastic stock with a wooden stock from the AMT model."

ATT.Icon = Material(iconfolder .. "mag8.png", "mips smooth")
ATT.Category = "uplp_sg510_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_sg510_stock_wood"}

ATT.RecoilMultMult = 0.9

ARC9.LoadAttachment(ATT, "uplp_sg510_stock_wood")


-- amt barrel

ATT = {}

ATT.PrintName = "AMT Match Barrel"
ATT.CompactName = "AMT"
ATT.Description = "A match grade barrel from the AMT model. Despite its shorter length, it improves accuracy thanks to its higher twist rate."

ATT.Icon = Material(iconfolder .. "mag8.png", "mips smooth")
ATT.Category = "uplp_sg510_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_sg510_barrel_amt"}

ATT.RecoilMultMult = 0.9

ARC9.LoadAttachment(ATT, "uplp_sg510_barrel_amt")

