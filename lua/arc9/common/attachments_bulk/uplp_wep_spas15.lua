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
ATT.AimDownSightsTimeAdd = -0.08
ATT.SprintToFireTimeAdd = -0.08
ATT.SpeedMultSights = 1.075

-- Negatives
ATT.SwayAddSights = 0.4
ATT.SwayMultSights = 1.1
ATT.RecoilMult = 1.25
ATT.RecoilSideMult = 1.25

ARC9.LoadAttachment(ATT, "uplp_spas15_stock_fold")
