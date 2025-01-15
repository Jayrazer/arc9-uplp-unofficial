local iconfolder = "entities/uplp_attachements/sw629/"

-------------------------------------------
-- Long Barrel

ATT = {}

ATT.PrintName = ARC9:GetPhrase("uplp_629_barrel_long.printname")
ATT.CompactName = ARC9:GetPhrase("uplp_629_barrel_long.compactname")
ATT.Description = ARC9:GetPhrase("uplp_629_barrel_long.description")

ATT.Icon = Material(iconfolder .. "uplp_sw_barrel_long.png", "mips smooth")
ATT.Category = "uplp_sw_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_sw_barrel_long"}

ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 0.9
ATT.RecoilAutoControlMult = 1.05

ARC9.LoadAttachment(ATT, "uplp_629_barrel_long")

-------------------------------------------
-- Short Barrel

ATT = {}

ATT.PrintName = ARC9:GetPhrase("uplp_629_barrel_short.printname")
ATT.CompactName = ARC9:GetPhrase("uplp_629_barrel_short.compactname")
ATT.Description = ARC9:GetPhrase("uplp_629_barrel_short.description")

ATT.Icon = Material(iconfolder .. "uplp_sw_barrel_short.png", "mips smooth")
ATT.Category = "uplp_sw_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_sw_barrel_short", "nooptic"}

ATT.AimDownSightsTimeMult = 0.85
ATT.RecoilMult = 1.2

ARC9.LoadAttachment(ATT, "uplp_629_barrel_short")

-------------------------------------------
-- Smooth Grip

ATT = {}

ATT.PrintName = ARC9:GetPhrase("uplp_629_grip_big.printname")
ATT.CompactName = ARC9:GetPhrase("uplp_629_grip_big.compactname")
ATT.Description = ARC9:GetPhrase("uplp_629_grip_big.description")

ATT.Icon = Material(iconfolder .. "uplp_sw_grip_smooth.png", "mips smooth")
ATT.Category = "uplp_sw_grip"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_sw_grip_big"}

ATT.AimDownSightsTimeMult = 0.85
ATT.RecoilUpMult = 1.1

ARC9.LoadAttachment(ATT, "uplp_629_grip_big")