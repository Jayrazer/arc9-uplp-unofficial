AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 3 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "SPAW-15"
SWEP.Description = "A dual-mode shotgun with a box magazine."

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_shotgun") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_shotgun") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = "SPAS-15",

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase( "uplp_weapon_molot_manufacturer" ),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_12gauge"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = string.format( ARC9:GetPhrase("uplp_mechanism_2" ),
                                                                        ARC9:GetPhrase( "uplp_mechanism_gasoperated" ),
                                                                        ARC9:GetPhrase( "uplp_mechanism_rotatingbolt" ) ),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_russia" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "2003" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "Moka",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "TastyTony, Darsu",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Partexedd, Darsu",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "rzen1th",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}

SWEP.StandardPresets = {

}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_m3"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_red.mdl"
SWEP.ShellScale = 1.0
SWEP.ShellPitch = 90
SWEP.ShellVelocity = 0.75
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable

SWEP.EjectDelay = 0.01

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 90, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_spas15.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_molot.mdl"

SWEP.ActivePos = Vector(0, 1, -0.25)

SWEP.SprintPos = Vector(2, 1, -1.6)

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_vepr.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -8),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(-4.5, 2, -5),
    TPIKAng = Angle(-12, -0, 180),
    Scale = 1,

    TPIKPosSightOffset = Vector(-1, 2, -3),
}

SWEP.ViewModelFOVBase = 75

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

---- Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 120
SWEP.DamageMin = 48
SWEP.DistributeDamage = true
SWEP.HeadshotDamage = 1
SWEP.DamageType = DMG_BULLET + DMG_BUCKSHOT

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

SWEP.Penetration = 2 -- Units of wood that can be penetrated
SWEP.ImpactForce = 3 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 3 / ARC9.HUToM
SWEP.RangeMax = 30 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 420 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 2

-- Magazine Info
SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1
SWEP.ClipSize = 6

-- Recoil
SWEP.Recoil = 1.5
SWEP.RecoilUp = 1.5
SWEP.RecoilSide = 1.25

-- Additional recoil when firing rapidly
SWEP.RecoilMultRecoil = 2

SWEP.RecoilRandomUp = 1.1
SWEP.RecoilRandomSide = 1.25

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.25 * 1.25

SWEP.RecoilMultSights = 0.75
SWEP.RecoilMultCrouch = 0.85

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = -0.15 -- Vertical tilt
SWEP.VisualRecoilSide = -0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = 30 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .1

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 5
SWEP.VisualRecoilSideHipFire = -0.2
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.5
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.UseDispersion = true

SWEP.Spread = 0.04
SWEP.SpreadAddMidAir = 0.05

SWEP.DispersionSpread = 0
SWEP.DispersionSpreadAddHipFire = 0.02

SWEP.DispersionSpreadAddRecoil = 0.05
SWEP.DispersionSpreadAddMove = 0.03
SWEP.DispersionSpreadAddMidAir = 0.05

SWEP.RecoilDissipationRate = 2
SWEP.RecoilResetTime = 0
SWEP.RecoilPerShot = 1 / 2
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1

-- Weapon handling
SWEP.SpeedMult = 0.8 + 0.05 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.65 / 0.85 -- When aiming

SWEP.AimDownSightsTime = 0.45 - 0.1 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.42 - 0.1 -- Time it takes to fully enter sprint

SWEP.SwayAddSights = 1
SWEP.BarrelLength = 42

-- Shooting and Firemodes
SWEP.RPM = 250 -- How fast gun shoot

SWEP.Num = 8 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = 1, -- Semi
        ManualAction = false,
        SweetSpotDamageMult = 0.8,
    },
	{ Mode = 2, -- Pump
        PrintName = ARC9:GetPhrase("uplp_firemode_pump"),
        ManualAction = true,
        ManualActionNoLastCycle = true,
        NoShellEjectManualAction = true,
        DispersionSpreadAddHipFire = -0.01,
        SpreadMult = 0.85,
		RecoilMult = 1.25,
        DamageMaxMult = 1.15, -- blehh :p
        SweetSpotDamageMult = 1.15, -- blehh :p

        RPM = 50/0.2,
    },
}

SWEP.NoFiremodeWhenEmpty = true

SWEP.ShootPitch = 90
SWEP.ShootVolume = 120

-- HoldType Info
SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "smg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeNPC = nil

-- NPC Info
SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 60

-- Iron Sight and Sight Info
SWEP.IronSights = {
     Pos = Vector(-2.38, -2, -0.4),
     Ang = Angle(0, 1.9, 0),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

-- Customization Menu Info
SWEP.CustomizePos = Vector(17, 35, 4)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(17, -2.5, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 30, 0)
SWEP.CustomizeSnapshotFOV = 60

-- Dropped Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/vepr_mag_std.mdl"
SWEP.DropMagazineTime = 0.6
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 90, 90)
SWEP.DropMagazineVelocity = Vector(0, -5, 10)
-- SWEP.DropMagazineVelocity = Vector(0, 0, 0)

---- Sounds

-- urbna!
local pathUT = ")uplp_urban_temp/vepr/"
local pathUTC = "))uplp_urban_temp/common/"
local pathSPAS = "weapons/arc9/uplp_spas15/"


SWEP.ShootSound = {
    pathSPAS .. "fire1.wav",
    pathSPAS .. "fire2.wav"
}

SWEP.ShootSoundSilenced = {
    pathUT .. "fire-sup-01.wav",
    pathUT .. "fire-sup-02.wav",
    pathUT .. "fire-sup-03.wav",
}

SWEP.ShootSoundSilencedIndoor = SWEP.ShootSoundSilenced

SWEP.DistantShootSound = {
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-01.wav",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-02.wav",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-03.wav",
}
SWEP.DistantShootSoundIndoor = {
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-01.wav",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-02.wav",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-03.wav",
}

SWEP.LayerSoundIndoor = SWEP.DistantShootSoundIndoor

SWEP.DistantShootSoundSilenced = {
    pathUTC .. "generictails/sup-tail-01.wav",
    pathUTC .. "generictails/sup-tail-02.wav",
    pathUTC .. "generictails/sup-tail-03.wav",
    pathUTC .. "generictails/sup-tail-04.wav",
    pathUTC .. "generictails/sup-tail-05.wav",
}
SWEP.DistantShootSoundSilencedIndoor = {
    pathUTC .. "generictails/fire-dist-int-pistol-light-01.wav",
    pathUTC .. "generictails/fire-dist-int-pistol-light-02.wav",
    pathUTC .. "generictails/fire-dist-int-pistol-light-03.wav",
}

SWEP.DropMagazineSounds = {
    pathUTC .. "rifle_magdrop_p.ogg",
}



local mechh = {
    pathUT .. "mech-01.wav",
    pathUT .. "mech-02.wav",
    pathUT .. "mech-03.wav",
    pathUT .. "mech-04.wav",
}

local UTCrattle = {
    -- pathUTC .. "rattle.ogg",
    pathUTC .. "rattle1.ogg",
    pathUTC .. "rattle2.ogg",
    pathUTC .. "rattle3.ogg",
}

local thetoggle = {{
    s = {
        "arc9/toggles/flashlight_laser_toggle_off_01.ogg",
        "arc9/toggles/flashlight_laser_toggle_off_02.ogg",
        "arc9/toggles/flashlight_laser_toggle_off_03.ogg",
        "arc9/toggles/flashlight_laser_toggle_on_01.ogg",
        "arc9/toggles/flashlight_laser_toggle_on_02.ogg",
        "arc9/toggles/flashlight_laser_toggle_on_03.ogg",
    }, t = 0
}}

SWEP.Hook_TranslateAnimation = function(swep, anim)
	local fm = swep:GetFiremode()
	
    if fm == 2 then
        return anim .. "_pump"
    end
end

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },    
	["idle_pump"] = {
        Source = "idle_pump",
    },
	["idle_empty_pump"] = {
        Source = "idle_pump",
    },
	
    ["ready"] = {
        Source = "ready",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "chargeback.wav", t = 5 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "chargeforward.wav", t = 11.5 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_4.ogg", t = 36 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.01, lhik = 0 },
            { t = 0.6, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["draw"] = {
        Source = "draw",
        MinProgress = 0.75,
        Mult = 0.8,
		FireASAP = true,
        EventTable = {
            { s = pathUTC .. "cloth_3.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
        },
    },    
	["draw_pump"] = {
        Source = "draw_pump",
        MinProgress = 0.75,
        Mult = 0.8,
		FireASAP = true,
        EventTable = {
            { s = pathUTC .. "cloth_3.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster"] = {
        Source = "holster",
        Mult = 0.8,
		MinProgress = 0.5,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        MinProgress = 0.75,
        Mult = 0.8,
		FireASAP = true,
        EventTable = {
            { s = pathUTC .. "cloth_3.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
        },
    },
	["draw_empty_pump"] = {
        Source = "draw_pump",
        MinProgress = 0.75,
        Mult = 0.8,
		FireASAP = true,
        EventTable = {
            { s = pathUTC .. "cloth_3.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Mult = 0.8,
		MinProgress = 0.5,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
        },
    },


    ["fire"] = {
        Source = "fire",
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = mechh, t = 0, v = 0.75 },
        },
    },
	
	["fire_pump"] = {
        Source = "fire_pump",
        IKTimeLine = { { t = 0, lhik = 1 } },
    },

    ["fire_empty"] = {
        Source = "fire_empty",
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = mechh, t = 0, v = 0.75 },
        },
    },
	
	["fire_empty_pump"] = {
        Source = "fire_pump",
        IKTimeLine = { { t = 0, lhik = 1 } },
    },
	
	["cycle"] = {
        Source = "pump",
		Mult = 1,
        IKTimeLine = { { t = 0, lhik = 1 } },
		EjectAt = 3 / 30,
        EventTable = {
            { s = pathSPAS .. "pumpback.wav", t = 0.01, c = ca, v = 0.8 },
            { s = pathSPAS .. "pumpforward.wav", t = 5 / 30, c = ca, v = 0.8 },
        },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.725,
		FireASAP = true,
        Mult = 1.05,
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
			{ s = pathSPAS .. "switch.wav", t = 5 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "magout.wav", t = 8 / 30, c = ca, v = 0.8 },
			{ s = pathUTC .. "magpouch.ogg", t = 15 / 30, v = 0.6 },
            { s = pathSPAS .. "magin.wav", t = 26 / 30, c = ca, v = 0.8 },
            { s = UTCrattle, t = 35 / 30, c = ca, v = 0.8 },
        },
        DropMagAt = 0.86,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    
	
	["reload_pump"] = {
        Source = "reload_pump",
        MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.725,
		FireASAP = true,
        Mult = 1.05,
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "switch.wav", t = 6 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "magout.wav", t = 8 / 30, c = ca, v = 0.8 },
			{ s = pathUTC .. "magpouch.ogg", t = 15 / 30, v = 0.6 },
            { s = pathSPAS .. "magin.wav", t = 26 / 30, c = ca, v = 0.8 },
            { s = UTCrattle, t = 35 / 30, c = ca, v = 0.8 },
        },
        DropMagAt = 0.86,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        MinProgress = 0.95,
		PeekProgress = 0.9,
		RefillProgress = 0.775,
		FireASAP = true,
        Mult = 1.05,
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
			{ s = pathSPAS .. "switch.wav", t = 6 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "magout.wav", t = 9 / 30, c = ca, v = 0.8 },
			{ s = pathUTC .. "magpouch.ogg", t = 18 / 30, v = 0.6 },
            { s = pathSPAS .. "magin.wav", t = 26 / 30, c = ca, v = 0.8 },
            { s = UTCrattle, t = 37 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "chargeback.wav", t = 49 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "chargeforward.wav", t = 52 / 30, c = ca, v = 0.8 },
            { s = UTCrattle, t = 60 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.25},
            {hide = 2, t = 0.86},
        },
        DropMagAt = 0.86,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    
	["reload_empty_pump"] = {
        Source = "reload_empty_pump",
        MinProgress = 0.95,
		PeekProgress = 0.9,
		RefillProgress = 0.775,
		FireASAP = true,
        Mult = 1.05,
		EjectAt = 3 / 30,
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "pumpback.wav", t = 1 / 30, c = ca, v = 0.8 },
			{ s = pathSPAS .. "switch.wav", t = 9 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "magout.wav", t = 11 / 30, c = ca, v = 0.8 },
			{ s = pathUTC .. "magpouch.ogg", t = 18 / 30, v = 0.6 },
            { s = pathSPAS .. "magin.wav", t = 27 / 30, c = ca, v = 0.8 },
            { s = pathSPAS .. "pumpforward.wav", t = 49 / 30, c = ca, v = 0.8 },
            { s = UTCrattle, t = 39 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.25},
            {hide = 2, t = 0.86},
        },
        DropMagAt = 0.86,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["firemode_1"] = {
        Source = "to_pump",
        EventTable = {
		    thetoggle,
            { s = pathSPAS .. "switch.wav", t = 1 / 30, c = ca, v = 0.8 },
        },
    },
    ["firemode_2"] = {
        Source = "to_semi",
        EventTable = {
            thetoggle,
            { s = pathSPAS .. "switch.wav", t = 1 / 30, c = ca, v = 0.8 },
        },
    },

    ["switchsights"] = {
        Source = "modeswitch",
        EventTable = thetoggle
    },
    ["switchsights_empty"] = {
        Source = "modeswitch_empty",
        EventTable = thetoggle
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model

	if eles["uplp_spas15_stock_fold"] then mdl:SetBodygroup(1, 1) end
	if eles["uplp_spas15_mag_8"] then mdl:SetBodygroup(4, 1) end
end

SWEP.AttachmentElements = {
    -- STOCK
    ["uplp_spas15_stock_fold"] = { Bodygroups = { { 1, 1 } } },
	
	-- SHELLS
    ["uplp_sg_shell_blue"] = { Bodygroups = { { 3, 1 } } },
    ["uplp_sg_shell_black"] = { Bodygroups = { { 3, 2 } } },
    ["uplp_sg_shell_green"] = { Bodygroups = { { 3, 3 } } },
    ["uplp_sg_shell_orange"] = { Bodygroups = { { 3, 4 } } },
    ["uplp_sg_shell_yellow"] = { Bodygroups = { { 3, 5 } } },
	
	--MAG
	["uplp_spas15_mag_8"] = { Bodygroups = { { 4, 1 } } },

}

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_optic"),
        -- Category = {"uplp_optic_micro", "uplp_optic_mid", "uplp_optic_big"},
        -- DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        -- Bone = "body",
        -- Pos = Vector(0, -0.175, 1.5),
        -- Ang = Angle(90, 90, 180),
    -- },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_molot_muzzle"},
        Bone = "body",
        Pos = Vector(-0.1, 1.74, 21.8),
        Ang = Angle(90, 90, 180),
		RejectAttachments = {
        ["uplp_sg_mz_vepr"] = true,
        }
    },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_internals"),
        -- Category = {"uplp_molot_bolt"},
        -- DefaultIcon = Material(defatt2 .. "trigger.png", "mips smooth"),
        -- Bone = "body",
        -- Pos = Vector(0.045, 2.5, 1.1),
        -- Ang = Angle(90, 90, 180),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        -- Category = {"uplp_molot_barrel"},
        -- DefaultIcon = Material(defatt2 .. "akbar.png", "mips smooth"),
        -- Bone = "body",
        -- Pos = Vector(0.045, 1.5, 13),
        -- Icon_Offset = Vector(-5, 0, 0.5),
        -- Ang = Angle(90, 90, 180),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_handguard"),
        -- Category = {"uplp_molot_handguard"},
        -- DefaultIcon = Material(defatt2 .. "akhg.png", "mips smooth"),
        -- Bone = "body",
        -- Pos = Vector(0.045, 2.5, 16.5),
        -- Icon_Offset = Vector(-6.5, 0, 1),
        -- Ang = Angle(90, 90, 180),
    -- },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_spas15_mag"},
        DefaultIcon = Material(defatt2 .. "saigamag.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 6.25, 5.25),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_ammo"),
        Category = {"uplp_sg_ammo"},
        Bone = "body",
        Pos = Vector(0.045, 3, 5),
        Ang = Angle(90, 90, 180),
        Installed = "uplp_sg_shell_red",
        Integral = "uplp_sg_shell_red",
    },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        -- Category = {"uplp_ak_grip"},
        -- DefaultIcon = Material(defatt2 .. "akgrip.png", "mips smooth"),
        -- ActiveElements = {"uplp_ak_grip"},
        -- ExcludeElements = {"uplp_no_pgrip"},
        -- Bone = "body",
        -- RejectAttachments = {
        -- ["uplp_ak_grip_molot"] = true,
        -- },
        -- Pos = Vector(0.045, 5, -1.1),
        -- Ang = Angle(90, 90, 180),
    -- },
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_spas15_stock"},
        DefaultIcon = Material(defatt2 .. "akstock.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 2.044, -3.0),
        Ang = Angle(90, 90, 180),
        Installed = "uplp_ak_stock_molot",
    },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_backup"),
        -- Category = {"uplp_backup_optic"},
        -- DefaultIcon = Material(defatt .. "fs.png", "mips smooth"),
        -- Bone = "body",
        -- Pos = Vector(0, -0.175, 0.5),
        -- Ang = Angle(90, 90, 180),
        -- ExcludeElements = {"uplp_no_backup"},
        -- CorrectiveAng = Angle(0, 0, 0),
        -- Icon_Offset = Vector(-1, 0, 0),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_backup"),
        -- Category = {"uplp_backup_optic_front"},
        -- Bone = "body",
        -- Pos = Vector(0, -0.175, 6.5),
        -- Ang = Angle(90, 90, 180),
        -- RequireElements = {"uplp_backup_optic_is"},
        -- Installed = "uplp_backup_optic_is_front",
        -- Integral = "uplp_backup_optic_is_front",
        -- Hidden = true,
    -- },




    -- -- Cosmetic shit
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " A",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/vepr_1.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 2, 4),
        -- Ang = Angle(90, 90, 180),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " B",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/vepr_2.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 2 + 1.5, -0.5),
        -- Ang = Angle(90, 90, 180),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " C",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/vepr_3.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 0.5 + 0.5, -1.8 - 1.5),
        -- Ang = Angle(90, 90, 180),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_charm"),
        -- Category = "charm",
        -- Bone = "bolt",
        -- Pos = Vector(1.75, 0.16, -0.37),
        -- Ang = Angle(90, 0, -90),
    -- },
}