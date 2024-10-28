-- M249 attachas

-- 150rnd mag

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "200R Big Box"
ATT.CompactName = "200RND"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_200"
end

-- Positives
ATT.ClipSizeOverride = 200

-- Negatives
ATT.SpreadAddHipFire = 0.02
ATT.AimDownSightsTimeAdd = 0.05
ATT.SprintToFireTimeAdd = 0.07
ATT.DeployTimeMult = 1.05
ATT.ReloadTimeMult = 1.1
ATT.SwayAddSights = 0.2
ATT.SwayMultSights = 1.1
ATT.SpeedAdd = -0.15
ATT.SpeedMultSights = 0.9

ARC9.LoadAttachment(ATT, "uplp_m249_mag_200")


-- 30rnd mag

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "30R AR-15 Mag"
ATT.CompactName = "30RND"
ATT.Description = "Uses the weapon's STANAG-compatible magwell."

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_stanag30.mdl"

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_30"
end

-- Positives
ATT.ClipSizeOverride = 30

-- Negatives
ATT.SpreadAddHipFire = 0.02
ATT.AimDownSightsTimeAdd = 0.05
ATT.SprintToFireTimeAdd = 0.07
ATT.DeployTimeMult = 0.8
ATT.ReloadTimeMult = 0.85
ATT.SwayAddSights = -0.15
ATT.SwayMultSights = 0.9
ATT.SpeedAdd = 0.2
ATT.SpeedMultSights = 1.15
ATT.DropMagazineTime = 0.4
ATT.DropMagazineTimeEmpty = 0.4

ATT.ReloadInSights = true

ARC9.LoadAttachment(ATT, "uplp_m249_mag_30")


-- SAW barrel

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "20.5\" SAW Barrel"
ATT.CompactName = "SAW"
ATT.Description = ATT.PrintName

ATT.ActivateElements = {"uplp_m249_brl_saw"}

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ARC9.LoadAttachment(ATT, "uplp_m249_brl_saw")


-- Short barrel

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "17.5\" Paratrooper Barrel"
ATT.CompactName = "PARA"
ATT.Description = ATT.PrintName

ATT.ActivateElements = {"uplp_m249_brl_para"}

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Attachments = {
    {
        PrintName = "Heatshield",
        Category = {"uplp_handguard_m249_short"},
        DefaultIcon = Material("entities/uplp_attachements/def/akhg.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(3, 0, -2.5),
        Ang = Angle(90, 90, 180),
    },
}

ARC9.LoadAttachment(ATT, "uplp_m249_brl_para")


-- Commando barrel

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "17.5\" Commando Barrel"
ATT.CompactName = "COMM"
ATT.Description = ATT.PrintName

ATT.ActivateElements = {"uplp_m249_brl_commando"}

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Model = "models/weapons/arc9/atts/fg_lhik.mdl"
ATT.ModelOffset = Vector(-23.2, -3.2, 5)
ATT.LHIK = true
ATT.LHIK_Priority = 5

ATT.Attachments = {
    {
        PrintName = "Heatshield",
        Category = {"uplp_handguard_m249_short"},
        DefaultIcon = Material("entities/uplp_attachements/def/akhg.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(3, 0, -2.5),
        Ang = Angle(90, 90, 180),
    },
}

ARC9.LoadAttachment(ATT, "uplp_m249_brl_commando")


-- Stock

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "Buttstock"
ATT.CompactName = "STOCK"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ARC9.LoadAttachment(ATT, "uplp_m249_stock_std")


-- default Heatshield

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "Standard Issue Heatshield"
ATT.CompactName = "STD"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_handguard_m249"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ARC9.LoadAttachment(ATT, "uplp_m249_hs_std")


-- mod Heatshield

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "Navy Mod Heatshield"
ATT.CompactName = "MOD"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_handguard_m249_short"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ARC9.LoadAttachment(ATT, "uplp_m249_hs_mod")