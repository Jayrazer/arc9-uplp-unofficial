--apparently there's no way to make sights integral without them being an attachment thanks arctic

ATT = {}

ATT.PrintName = "TK-F Scope - Dot Cross Reticle"
ATT.CompactName = "DOT"
ATT.Description = "Integral rocket launcher scope."

ATT.Model = "models/weapons/arc9/uplp_unofficial/attachments/panzerfaust_scope.mdl"
--ATT.FoldSights = true

ATT.Sights = {
    {
		Pos = Vector(7, 0.33, -0.2),
		Ang = Angle(1, -95, 0),
        Magnification = 2,
        ViewModelFOV = 56,
        RTScopeFOV = 48,

        SwayAddSights = sway_mid,
    },
}

ATT.SortOrder = 1


ATT.RTScope = true
ATT.RTScopeSubmatIndex = 4
ATT.RTScopeFOV = 60 / 4
ATT.RTScopeReticle = Material("vgui/uplp_reticles/aug.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 10
ATT.RTScopeBlackBox = true
ATT.RTScopeBlackBoxShadow = true

ATT.ScopeScreenRatio = 0.5

ATT.Category = "uplp_optic_panzerfaust"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Free = true
ATT.Hidden = false

ATT.ModelOffset = Vector(1.1, -2.1, 2.6)

ARC9.LoadAttachment(ATT, "uplp_optic_panzerfaust")


--bunkerfaust

ATT = {}

ATT.PrintName = ARC9:GetPhrase("uplp_ammo_bunkerbuster.printname")
ATT.CompactName = ARC9:GetPhrase("uplp_ammo_bunkerbuster.compactname")
ATT.Icon = Material("")
ATT.Description = ARC9:GetPhrase("uplp_ammo_bunkerbuster.description")
ATT.CustomPros = { 
["Blast Damage"] = "+25%"
}
ATT.CustomCons = {
["Blast Radius"] = "-50%"
}
ATT.SortOrder = 0
ATT.MenuCategory = ""
ATT.Free = false

ATT.ShootEntForceOverride = 2500

ATT.Category = "uplp_panzer_ammo"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"
ATT.ActivateElements = {"uplp_panzer_bunker"}
ATT.ShootEnt = "uplp_proj_panzerfaust_bunker"

ATT.Ignore = false

ARC9.LoadAttachment(ATT, "uplp_ammo_bunkerbuster")

