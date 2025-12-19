--apparently there's no way to make sights integral without them being an attachment thanks arctic

ATT = {}

ATT.PrintName = "TK-F Scope - Dot Cross Reticle"
ATT.CompactName = "DOT"
ATT.Description = "Integral rocket launcher scope."

ATT.Model = "models/weapons/arc9/atts/uplp_panzerfaust_scope.mdl"
--ATT.FoldSights = true

ATT.Sights = {
    {
		Pos = Vector(7, 0.3275, -0.2),
		Ang = Angle(1, -95, 0),
        Magnification = 1.5,
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

ATT.ModelOffset = Vector(1.01, -2.07, 2.605)

ARC9.LoadAttachment(ATT, "uplp_optic_panzerfaust")

