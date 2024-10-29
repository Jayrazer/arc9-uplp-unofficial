-- M249 attachas

-- 200rnd mag

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

ATT.DropMagazineModel = "models/weapons/arc9/magazines/uplp_m249_200.mdl"
ATT.DropMagazineTimeEmpty = 2.6

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
ATT.DropMagazinePos = Vector(2, 0, -8)
ATT.DropMagazineVelocity = Vector(80, 20, 0)

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_30"
end


ATT.ClipSizeOverride = 30

ATT.SpreadAddHipFire = -0.02
ATT.AimDownSightsTimeAdd = -0.125
ATT.SprintToFireTimeAdd = -0.05
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

ATT.PrintName = "21\" SAW Barrel"
ATT.CompactName = "SAW"
ATT.Description = ATT.PrintName

ATT.ActivateElements = {"uplp_m249_brl_saw"}

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_grip"),
        Category = {"uplp_grip_vert", "uplp_grip_horiz"},
        DefaultIcon = Material("entities/uplp_attachements/def/grip.png", "mips smooth"),
        Pos = Vector(2, 0, 1.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        Category = {"uplp_tac"},
        Bone = "body",
        Pos = Vector(2.5, 1.2, 0.1),
        Ang = Angle(0, 0, 90),
    },
	
}

ATT.SpreadAddHipFire = -0.01
ATT.SpreadAddSights = -0.01
ATT.SprintToFireTimeAdd = 0.04
ATT.DeployTimeMult = 1.075
ATT.SpeedMultSights = 0.9

ARC9.LoadAttachment(ATT, "uplp_m249_brl_saw")


-- Para barrel

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "17\" Paratrooper Barrel"
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

ATT.RPM = 975
ATT.SpreadAddHipFire = 0.015
ATT.SpreadAddSights = 0.015
ATT.SprintToFireTimeAdd = -0.15
ATT.AimDownSightsTimeAdd = -0.2
ATT.DeployTimeMult = 0.85
ATT.RecoilMult = 1.5
ATT.RecoilSideMult = 1.5
ATT.RecoilAutoControlMult = 0.95

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

ATT.Model = "models/weapons/arc9/atts/m249_fg_lhik.mdl"
ATT.ModelOffset = Vector(-23.2, -3.2, 5)
ATT.LHIK = true
ATT.LHIK_Priority = 5

ATT.Attachments = {
    {
        PrintName = "Heatshield",
        Category = {"uplp_handguard_m249", "uplp_handguard_m249_short"},
        DefaultIcon = Material("entities/uplp_attachements/def/akhg.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(3, 0, -2.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        Category = {"uplp_tac"},
        Bone = "body",
        Pos = Vector(0.9, -1.25, 0.3),
        Ang = Angle(0, 0, -90),
    },
}

ATT.SpreadAddHipFire = 0.01
ATT.SpreadAddSights = 0.01
ATT.SprintToFireTimeAdd = -0.05
ATT.AimDownSightsTimeAdd = -0.1
ATT.DeployTimeMult = 0.925
ATT.RecoilMult = 1.35
ATT.RecoilSideMult = 1.15

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

ATT.SprintToFireTimeAdd = 0.25
ATT.AimDownSightsTimeAdd = 0.2
ATT.DeployTimeMult = 1.25
ATT.RecoilMult = 0.7
ATT.RecoilSideMult = 0.85

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

ATT.RecoilMult = 0.975
ATT.AimDownSightsTimeAdd = 0.05

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

ATT.RecoilMult = 0.975
ATT.AimDownSightsTimeAdd = 0.05

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        Category = {"uplp_tac"},
        Bone = "body",
        Pos = Vector(-1.05, -0.7, 0.3),
        Ang = Angle(-90, 0, 0),
        ExcludeElements = {"uplp_m249_brl_commando"},
    },
	{
    PrintName = ARC9:GetPhrase("uplp_category_backup"),
    Category = {"uplp_backup_optic"},
    DefaultIcon = Material("arc9/def_att_icons/rs.png", "mips smooth"),
    Bone = "body",
    Pos = Vector(0, 0.6, -1.5),
    Ang = Angle(-90, 0, 90),
    ExcludeElements = {"uplp_no_backup"},
    CorrectiveAng = Angle(0.7, -0.35, 0),
    Icon_Offset = Vector(-1, 0, 0),
	},
},

ARC9.LoadAttachment(ATT, "uplp_m249_hs_mod")


-- default flash hider

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "Default Muzzle"
ATT.CompactName = "DEF"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_muzzle"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"
ATT.Model = "models/weapons/arc9/atts/uplp_m249_fh.mdl"
ATT.ModelOffset = Vector(-28.73, -3.325, 4.18)

ATT.Hidden = false
ATT.Free = true

ARC9.LoadAttachment(ATT, "uplp_m249_flash_default")