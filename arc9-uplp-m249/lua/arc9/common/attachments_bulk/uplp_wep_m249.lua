-- M249 attachas

local iconfolder = "entities/uplp_attachements/m249/"

-- 200rnd mag

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_mag_200.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_mag_200.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_mag_200.description" )

ATT.Icon = Material(iconfolder .. "box_200.png", "mips smooth")
ATT.Category = "uplp_m249_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_m249_mag_200"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_200"
end

ATT.DropMagazineModel = "models/weapons/arc9/magazines/uplp_m249_200.mdl"
ATT.DropMagazineTimeEmpty = 2.4

-- Positives
ATT.ClipSizeOverride = 180

-- Negatives
ATT.SpreadAddHipFire = 0.02
ATT.AimDownSightsTimeAdd = 0.05
ATT.SprintToFireTimeAdd = 0.07
ATT.DeployTimeMult = 1.05
ATT.ReloadTimeMult = 1.15
ATT.SwayAddSights = 0.2
ATT.SwayMultSights = 1.1
ATT.SpeedAdd = -0.125
ATT.SpeedMultSights = 0.9

ARC9.LoadAttachment(ATT, "uplp_m249_mag_200")


-- 30rnd mag

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_mag_30.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_mag_30.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_mag_30.description" )

ATT.Icon = Material("entities/uplp_attachements/ar15/mag/30.png", "mips smooth")
ATT.Category = "uplp_m249_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_stanag30.mdl"
ATT.DropMagazinePos = Vector(2, 0, -8)
ATT.DropMagazineVelocity = Vector(80, 20, 0)

ATT.ActivateElements = {"uplp_m249_mag_30"}

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
ATT.SpeedMultShooting = 1.25

ATT.ReloadInSights = true

ARC9.LoadAttachment(ATT, "uplp_m249_mag_30")


-- 60rnd mag

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_mag_60.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_mag_60.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_mag_60.description" )

ATT.Icon = Material("entities/uplp_attachements/ar15/mag/60.png", "mips smooth")
ATT.Category = "uplp_m249_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_stanag60.mdl"
ATT.DropMagazinePos = Vector(2, 0, -8)
ATT.DropMagazineVelocity = Vector(80, 20, 0)

ATT.ActivateElements = {"uplp_m249_mag_60"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_30"
end


ATT.ClipSizeOverride = 60

ATT.SpreadAddHipFire = -0.01
ATT.AimDownSightsTimeAdd = -0.1
ATT.SprintToFireTimeAdd = -0.025
ATT.DeployTimeMult = 0.9
ATT.SwayAddSights = -0.1
ATT.SwayMultSights = 1
ATT.SpeedAdd = 0.125
ATT.SpeedMultSights = 1.1
ATT.DropMagazineTime = 0.4
ATT.DropMagazineTimeEmpty = 0.4
ATT.SpeedMultShooting = 1.15

ATT.ReloadInSights = true

ARC9.LoadAttachment(ATT, "uplp_m249_mag_60")





-- SAW barrel

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_brl_saw.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_brl_saw.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_brl_saw.description" )

ATT.ActivateElements = {"uplp_m249_brl_saw"}

ATT.Icon = Material(iconfolder .. "brl_saw.png", "mips smooth")
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
ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.025
ATT.DeployTimeMult = 1.05
ATT.SpeedMultSights = 0.95

ARC9.LoadAttachment(ATT, "uplp_m249_brl_saw")


-- Para barrel

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_brl_para.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_brl_para.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_brl_para.description" )

ATT.ActivateElements = {"uplp_m249_brl_para"}

ATT.Icon = Material(iconfolder .. "brl_para.png", "mips smooth")
ATT.Category = "uplp_m249_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase( "uplp_category_m249_heatshield" ),
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
ATT.SprintToFireTimeMult = 0.8
ATT.AimDownSightsTimeMult = 0.85
ATT.DeployTimeMult = 0.85
ATT.RecoilMult = 1.5
ATT.RecoilSideMult = 1.5
ATT.RecoilAutoControlMult = 0.95

ARC9.LoadAttachment(ATT, "uplp_m249_brl_para")


-- Commando barrel

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_brl_commando.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_brl_commando.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_brl_commando.description" )

ATT.ActivateElements = {"uplp_m249_brl_commando"}

ATT.Icon = Material(iconfolder .. "brl_commando.png", "mips smooth")
ATT.Category = "uplp_m249_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Model = "models/weapons/arc9/atts/m249_fg_lhik.mdl"
ATT.ModelOffset = Vector(-23.2, -3.2, 5)
ATT.LHIK = true
ATT.LHIK_Priority = 5

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase( "uplp_category_m249_heatshield" ),
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
ATT.SprintToFireTimeMult = 0.95
ATT.AimDownSightsTimeMult = 0.9
ATT.DeployTimeMult = 0.925
ATT.RecoilMult = 1.35
ATT.RecoilSideMult = 1.15

ARC9.LoadAttachment(ATT, "uplp_m249_brl_commando")










-- Stock

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_stock_std.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_stock_std.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_stock_std.description" )

ATT.Icon = Material(iconfolder .. "std_stock.png", "mips smooth")
ATT.Category = "uplp_m249_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.RecoilAdd = -1
ATT.RecoilAutoControlMult = 1.75
ATT.VisualRecoilMult = 0.8
ATT.VisualRecoilMultHipFire = 0.5
ATT.SwayAddSights = -0.6

ATT.SprintToFireTimeMult = 1.2
ATT.AimDownSightsTimeMult = 1.2
ATT.DeployTimeMult = 1.1

ARC9.LoadAttachment(ATT, "uplp_m249_stock_std")


-- Buffertube

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_stock_buffer.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_stock_buffer.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_stock_buffer.description" )

ATT.Icon = Material(iconfolder .. "buffertube.png", "mips smooth")
ATT.Category = "uplp_m249_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

-- ATT.SprintToFireTimeMult = 0.8
-- ATT.AimDownSightsTimeMult = 0.8
-- ATT.DeployTimeMult = 0.75
-- ATT.RecoilMult = 1.75
-- ATT.RecoilSideMult = 1.3
-- ATT.VisualRecoilMult = 1.1
-- ATT.VisualRecoilMultHipFire = 1.8

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_ar15_stock"},
        DefaultIcon = Material("entities/uplp_attachements/def/akstock.png", "mips smooth"),
        Pos = Vector(-0.75, 0, -0.825),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-2, 0, 0.5),
        Scale = 1.08
    },
}

ARC9.LoadAttachment(ATT, "uplp_m249_stock_buffer")







-- default Heatshield

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_hs_std.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_hs_std.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_hs_std.description" )

ATT.Icon = Material(iconfolder .. "hs_std.png", "mips smooth")
ATT.Category = "uplp_handguard_m249"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.RecoilMult = 0.975
ATT.AimDownSightsTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "uplp_m249_hs_std")


-- mod Heatshield

ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_hs_mod.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_hs_mod.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_hs_mod.description" )

ATT.Icon = Material(iconfolder .. "hs_mod.png", "mips smooth")
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
    Pos = Vector(0, 0.6, -2),
    Ang = Angle(-90, 0, 90),
    ExcludeElements = {"uplp_no_backup"},
    CorrectiveAng = Angle(0.7, -0.35, 0),
    Icon_Offset = Vector(-1, 0, 0),
	},
	{
	PrintName = ARC9:GetPhrase("uplp_category_backup"),
    Category = {"uplp_backup_optic_front"},
    Bone = "body",
    Pos = Vector(0, 0.6, 4.232),
    Ang = Angle(-90, 0, 90),
    RequireElements = {"uplp_backup_optic_is"},
    Installed = "uplp_backup_optic_is_front",
    Integral = "uplp_backup_optic_is_front",
    Hidden = true,
	},
},

ARC9.LoadAttachment(ATT, "uplp_m249_hs_mod")





-- default flash hider -- UNUSED

ATT = {}

ATT.PrintName = "Default Muzzle"
ATT.CompactName = "DEF"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_muzzle_m249"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"
ATT.Model = "models/weapons/arc9/atts/uplp_m249_fh.mdl"
ATT.ModelOffset = Vector(-28.73, -3.325, 4.18)

ATT.Hidden = true
ATT.Free = false

ARC9.LoadAttachment(ATT, "uplp_m249_flash_default")




---------- m249 special bipod for special boys


ATT = {}

ATT.PrintName = ARC9:GetPhrase( "uplp_m249_bipod.printname" )
ATT.CompactName = ARC9:GetPhrase( "uplp_m249_bipod.compactname" )
ATT.Description = ARC9:GetPhrase( "uplp_m249_bipod.description" )

ATT.Icon = Material("entities/uplp_attachements/awp/bipod.png", "mips smooth")

ATT.Model = "models/weapons/arc9/atts/uplp_m249_bipod.mdl"

ATT.ActivateElements = {"uplp_bipod_used"}
-- ATT.ExcludeElements = {"uplp_grip_no_pdw"}

ATT.Category = "uplp_bipod_m249"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

-- Positives
ATT.Bipod = true

-- Negatives
ATT.SprintToFireTimeAdd = 0.06

ATT.DrawFunc = function(self, model, wm)

	if self:GetBipod() then
		if self:GetEnterBipodTime() + 0.08 < CurTime() then
			model:SetBodygroup(0, 1)
		end
	else
		model:SetBodygroup(0,0)
	end
	
end

ARC9.LoadAttachment(ATT, "uplp_m249_bipod")