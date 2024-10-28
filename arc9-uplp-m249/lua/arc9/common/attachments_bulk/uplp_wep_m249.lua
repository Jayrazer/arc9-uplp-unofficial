-- 150rnd mag

local iconfolder = "entities/uplp_attachements/ak/mag/"

ATT = {}

ATT.PrintName = "200R Big Box"
ATT.CompactName = "200RND"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "762b.png", "mips smooth")
ATT.Category = "uplp_m249_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_bak.mdl"

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