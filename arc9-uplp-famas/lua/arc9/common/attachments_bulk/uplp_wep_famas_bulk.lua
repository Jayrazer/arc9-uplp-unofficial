local ATT = {}

local iconfolder = "entities/uplp_attachements/famas/"

---------- uplp_famas_mag_35

ATT = {}

ATT.Ignore = false

ATT.PrintName = "35-Round 5.56x45mm"
ATT.CompactName = "35R 5.56"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "35mag.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/famas_mag_ext.mdl"

ATT.Category = "uplp_famas_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_famas_mag_35"}

ATT.ClipSizeOverride = 35

-- Negatives
ATT.SpreadAddHipFire = 0.005
ATT.AimDownSightsTimeAdd = 0.03
ATT.SprintToFireTimeAdd = 0.02
ATT.DeployTimeMult = 1.125
ATT.SwayMultSights = 1.1
ATT.SpeedMultSights = 0.9
ATT.ReloadTimeMult = 1.1

ARC9.LoadAttachment(ATT, "uplp_famas_mag_35")


---------- uplp_famas_mag_15

ATT = {}

ATT.Ignore = false

ATT.PrintName = "15-Round 5.56x45mm"
ATT.CompactName = "15R 5.56"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "15mag.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/famas_mag_small.mdl"

ATT.Category = "uplp_famas_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_famas_mag_15"}

ATT.SpreadAddHipFire = -0.005
ATT.AimDownSightsTimeAdd = -0.03
ATT.SprintToFireTimeAdd = -0.02
ATT.DeployTimeMult = 0.875
ATT.SwayMultSights = 0.9
ATT.ReloadTimeMult = 0.9

-- Negatives
ATT.ClipSizeOverride = 15

ARC9.LoadAttachment(ATT, "uplp_famas_mag_15")


---------- uplp_famas_brl_snub

ATT = {}

ATT.PrintName = "285mm Commando Barrel"
ATT.CompactName = "285mm"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "brlsnub.png", "mips smooth")

ATT.Category = "uplp_famas_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_famas_brl_snub"}

-- Positives
ATT.SpreadAddHipFire = -0.006
ATT.SpreadAddRecoil = -0.0012
ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.05
ATT.SpeedMultSights = 1.12
ATT.BarrelLengthAdd = -10

-- Negatives
ATT.RecoilMult = 1.25
ATT.RecoilSideAdd = 0.25
ATT.SpreadAdd = 0.0025
ATT.RangeMaxMult = 0.85
ATT.SweetSpotRangeAdd = -8 / ARC9.HUToM
ATT.SweetSpotWidthAdd = 15 / ARC9.HUToM
ATT.SweetSpotPeakAdd = -8 / ARC9.HUToM
ATT.RangeMinAdd = -12 / ARC9.HUToM
ATT.PhysBulletMuzzleVelocityMult = 0.8
ATT.RecoilPerShot = 1 / 6

ATT.CustomizePosHook = function(wep, vec) return vec + Vector(-3, -2, 0) end
ATT.CustomizeRotateAnchorHook = function(wep, vec) return vec + Vector(-3, 0, 0) end

ARC9.LoadAttachment(ATT, "uplp_famas_brl_snub")