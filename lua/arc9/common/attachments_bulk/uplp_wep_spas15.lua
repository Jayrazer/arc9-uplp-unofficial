-- spas15 attachas

local iconfolder = "entities/uplp_attachements/spas15/"

-- folded stock
-- not gonna do a no stock option cuz beh

ATT = {}

ATT.PrintName = "Folded Stock"
ATT.CompactName = "FOLD"
ATT.Description = "Fold the weapon's stock for better handling at the cost of recoil control."

ATT.Icon = Material(iconfolder .. "box_200.png", "mips smooth")
ATT.Category = "uplp_spas15_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_spas15_stock_fold"}

-- Positives
ATT.AimDownSightsTimeAdd = -0.1
ATT.SprintToFireTimeAdd = -0.1
ATT.SpeedMultSights = 1.075

-- Negatives
ATT.SwayAddSights = 0.4
ATT.SwayMultSights = 1.1
ATT.RecoilMult = 1.15
ATT.RecoilSideMult = 1.15

ARC9.LoadAttachment(ATT, "uplp_spas15_stock_fold")


-- little barrel
ATT = {}

ATT.PrintName = "381mm Barrel"
ATT.CompactName = "381mm"
ATT.Description = "A cut-down 381mm (15\") barrel for close-quarters combat."

ATT.Icon = Material(iconfolder .. "box_200.png", "mips smooth")
ATT.Category = "uplp_spas15_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_spas15_barrel_short"}

-- Positives
ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.04

-- Negatives
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 0.85
ATT.SpreadAddRecoil = 0.0012

ARC9.LoadAttachment(ATT, "uplp_spas15_barrel_short")


-- BIGF barrel
ATT = {}

ATT.PrintName = "559mm Barrel"
ATT.CompactName = "559mm"
ATT.Description = "A 559mm (22\") barrel found on civilian models of the weapon."

ATT.Icon = Material(iconfolder .. "box_200.png", "mips smooth")
ATT.Category = "uplp_spas15_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_spas15_barrel_long"}

--Positives
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.SpreadAddRecoil = -0.001

-- Negatives
ATT.AimDownSightsTimeAdd = 0.04
ATT.SprintToFireTimeAdd = 0.04

ARC9.LoadAttachment(ATT, "uplp_spas15_barrel_long")


-- stendy mag

ATT = {}

ATT.PrintName = "8-Round Extended"
ATT.CompactName = "8R Ext"
ATT.Description = "8-round extended magazine for the SPAW-15."

ATT.Icon = Material(iconfolder .. "box_200.png", "mips smooth")
ATT.Category = "uplp_spas15_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_spas15_mag_8"}

ATT.ClipSizeOverride = 8
ATT.ReloadTimeMult = 1.075

ATT.DropMagazineModelOverride = "models/weapons/arc9/magazines/spas15_mag_8.mdl"

ARC9.LoadAttachment(ATT, "uplp_spas15_mag_8")
