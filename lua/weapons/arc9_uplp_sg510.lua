AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 2 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "FGW 57"
SWEP.Description = "The Fahrradgewehr (\"Bicycle Rifle\") mod. 1957 is an eccentric battle rifle known for its reliability, accuracy and famously, being overbuilt and needlessly complex. Being a Swiss rifle, it saw very little combat use during its service life."

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_ar") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_ar") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = "Stgw 57, SG 510",

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = "SIG",
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = "7.5x55mm Swiss",
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = string.format( ARC9:GetPhrase("uplp_mechanism_2" ),
                                                                        ARC9:GetPhrase( "uplp_mechanism_rollerdelay" ),
                                                                        ARC9:GetPhrase( "uplp_mechanism_closedbolt" ) ),-- true?
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_switzerland" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1957" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "speedonerd",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "TastyTony",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "dummified",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "speedonerd",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}


SWEP.StandardPresets = {
}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_lmg"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_308.mdl"
SWEP.ShellScale = 1.0
SWEP.ShellPitch = 90
SWEP.ShellSounds = ARC9.Shell308SoundsTable

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 90, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_stgw57.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_fal.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_ak.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3.5, -7),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(-4.5, 2, -5),
    TPIKAng = Angle(-12, -0, 180),
    Scale = 1,

    TPIKPosSightOffset = Vector(1, 2.5, -3),
}

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(-0.1, 1.0, -0.05)

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

---- Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 40
SWEP.DamageMin = 28
SWEP.HeadshotDamage = 1
SWEP.DamageType = DMG_BULLET

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.2,
    [HITGROUP_CHEST] = 1.0,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
}

SWEP.Penetration = 30 -- Units of wood that can be penetrated
SWEP.ImpactForce = 8

-- Range
SWEP.RangeMin = 30 / ARC9.HUToM
SWEP.RangeMax = 120 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 840 * 39.37
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1
SWEP.ClipSize = 25

-- Recoil
SWEP.Recoil = 1 * 0.75
SWEP.RecoilUp = 1.55
SWEP.RecoilSide = 1.2

SWEP.RecoilRandomUp = 1.1
SWEP.RecoilRandomSide = 1.1

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.25 * 1.5

SWEP.RecoilMultSights = 0.75
SWEP.RecoilMultCrouch = 0.85

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = 0 -- Vertical tilt
SWEP.VisualRecoilSide = -0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = 2.5 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .1

SWEP.VisualRecoilMultHipFire = 0.5
SWEP.VisualRecoilUpHipFire = 0.75
SWEP.VisualRecoilSideHipFire = -0.2
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.5
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0.003
SWEP.SpreadAddHipFire = 0.035

SWEP.SpreadAddRecoil = 0.013
SWEP.SpreadAddMove = 0.012
SWEP.SpreadAddMidAir = 0.05

SWEP.SpreadMultSights = 1
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 8
SWEP.RecoilResetTime = 0.02
SWEP.RecoilPerShot = 1 / 8
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1

-- Weapon handling
SWEP.Speed = 0.8
SWEP.SpeedMultSights = 0.6
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.43

SWEP.SwayAddSights = 0
SWEP.BarrelLength = 40

-- Shooting and Firemodes
SWEP.RPM = 500 -- How fast gun shoot
SWEP.HeatCapacity = 120 * 1.5 -- For suppresors; how many shots for full heat With big silencer (Small silencers will make this number lower down to 70%)

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = -1, -- Full
    PoseParam = 1 },
    { Mode = 1, -- Semi
    RPM = 375,
    PoseParam = 2 }
}

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
SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Iron Sight and Sight Info
SWEP.IronSights = {
     Pos = Vector(-3.07, -2, -0.1),
     Ang = Angle(0.1, 0.8, 4),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

     if attached["uplp_sg510_barrel_amt"] then
        return {
			Pos = Vector(-3.07, -1, 1.11),
			Ang = Angle(0.09, 0.55, 4),
			Magnification = 1.15,
			ViewModelFOV = 55,
        }
    end

end

-- Customization Menu Info
SWEP.CustomizePos = Vector(18, 50, 4)
SWEP.CustomizeAng = Angle(90, -2, 1)
SWEP.CustomizeRotateAnchor = Vector(18, -2.7, 0)

SWEP.CustomizeSnapshotPos = Vector(0, 55, 0)
SWEP.CustomizeSnapshotFOV = 60

-- Dropped Magazine
SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/fal_mag_20.mdl"
SWEP.DropMagazineTime = 0.85
SWEP.DropMagazineQCA = 2
SWEP.DropMagazinePos = Vector(0, 0, 40)
SWEP.DropMagazineAng = Angle(0, 0, 0)
SWEP.DropMagazineVelocity = Vector(40, -30, 0)

---- Sounds
-- urbna!
local pathUT = ")uplp_urban_temp/ak/"
local pathUTScar = ")uplp_urban_temp/scar/"
local pathUTC = ")uplp_urban_temp/common/"
local path510 = "weapons/arc9/uplp_stgw57/"

SWEP.ShootSound = {
    path510 .. "fire1.wav",
    path510 .. "fire2.wav",
    path510 .. "fire3.wav",
}

SWEP.ShootSoundSilenced = {
    pathUTScar .. "fire-sup-01.wav",
    pathUTScar .. "fire-sup-02.wav",
    pathUTScar .. "fire-sup-03.wav",
}

SWEP.ShootSoundSilencedIndoor = SWEP.ShootSoundSilenced

SWEP.DistantShootSound = {
    pathUTC .. "308tails/fire-dist-308-rif-ext-01.wav",
    pathUTC .. "308tails/fire-dist-308-rif-ext-02.wav",
    pathUTC .. "308tails/fire-dist-308-rif-ext-03.wav",
}

SWEP.DistantShootSoundIndoor = {
    pathUTC .. "308tails/fire-dist-308-rif-int-01.wav",
    pathUTC .. "308tails/fire-dist-308-rif-int-02.wav",
    pathUTC .. "308tails/fire-dist-308-rif-int-03.wav",
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
    pathUTC .. "rifle_magdrop_1.ogg",
    pathUTC .. "rifle_magdrop_2.ogg",
    pathUTC .. "rifle_magdrop_3.ogg",
    pathUTC .. "rifle_magdrop_4.ogg",
    pathUTC .. "rifle_magdrop.ogg",
}

---- Animations
-- HideBones, BulletBones, etc.
SWEP.BulletBones = {
    [1] = "stgw57_bullet1",
    [2] = "stgw57_bullet2",
    [3] = "stgw57_bullet3",
}
SWEP.BulletBonesSub1 = true

SWEP.HideBones = {
    "stgw57_magazine2",
    "stgw57_bullet12",
    "stgw57_bullet22",
    "stgw57_bullet32",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
		"stgw57_magazine2",
		"stgw57_bullet12",
		"stgw57_bullet22",
		"stgw57_bullet32",
    },
    [2] = {
		"stgw57_magazine1",
		"stgw57_bullet1",
		"stgw57_bullet2",
		"stgw57_bullet3",
    },
}

local mechh = {
    path510 .. "mech1.wav",
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

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "ready",
        MinProgress = 0.75,
		FireASAP = true,
        EventTable = {
            { s = pathUTC .. "cloth_3.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
            { s = path510 .. "chargeback.wav", t = 3 / 30, c = ca, v = 0.8 },
            { s = path510 .. "chargeforward.wav", t = 9 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_4.ogg", t = 35 / 60, c = ca },
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
        MinProgress = 0.6,
        FireASAP = true,
        EventTable = {
            { s = pathUTC .. "cloth_3.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster"] = {
        Source = "holster",
        MinProgress = 0.4,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
        },
    },

    ["fire"] = {
        Source = {"fire1", "fire2", "fire3"},
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = mechh, t = 0, v = 0.8  },
        },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        MinProgress = 0.9,
        PeekProgress = 0.865,
        RefillProgress = 0.6,
        FireASAP = true,
        Mult = 1,
        EventTable = {
            { s = pathUT .. "reload_start.ogg", t = 0.025, c = ca, v = 0.8 },
            { s = pathUTC .. "magpouch.ogg", t = 5 / 30, v = 0.6 },
            { s = pathUT .. "magrelease.ogg", t = 18 / 30, c = ca, v = 0.8 },
            { s = path510 .. "magout2.wav", t = 21 / 30 - 0.15, c = ca, v = 0.8 },
            { s = path510 .. "magin.wav", t = 35 / 30 - 0.05, c = ca, v = 0.8 },
			{ s = pathUTC .. "cloth_2.ogg", t = 42 / 30, c = ca, v = 0.8 },
			{ s = pathUTC .. "movement-rifle-02.ogg", t = 46 / 30, c = ca, v = 0.8 },
            {hide = 0, t = 0},
        },
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
        MinProgress = 0.9,
        PeekProgress = 0.825,
        RefillProgress = 0.49,
        FireASAP = true,
        Mult = 0.95,
        EventTable = {
            { s = pathUT .. "reload_start.ogg", t = 0.025, c = ca, v = 0.8 },
            { s = pathUTC .. "magpouch.ogg", t = 5 / 30, v = 0.6 },
            { s = pathUT .. "magrelease.ogg", t = 18 / 30, c = ca, v = 0.8 },
            { s = path510 .. "magout2.wav", t = 21 / 30 - 0.15, c = ca, v = 0.8 },
            { s = path510 .. "magin.wav", t = 35 / 30 - 0.05, c = ca, v = 0.8 },
            { s = path510 .. "chargeback.wav", t = 54 / 30 - 0.05, c = ca, v = 0.5 },
            { s = path510 .. "chargeforward.wav", t = 61 / 30 - 0.1, c = ca, v = 1 },
            { s = pathUTC .. "cloth_3.ogg", t = 74 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 72 / 30, c = ca, v = 0.8 },
            --{hide = 2, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.72, lhik = 0 },
            { t = 0.86, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    
	
	["reload_20"] = {
        Source = "reload_20",
        MinProgress = 0.9,
        PeekProgress = 0.865,
        RefillProgress = 0.6,
        FireASAP = true,
        Mult = 1,
        EventTable = {
            { s = pathUT .. "reload_start.ogg", t = 0.025, c = ca, v = 0.8 },
            { s = pathUTC .. "magpouch.ogg", t = 5 / 30, v = 0.6 },
            { s = pathUT .. "magrelease.ogg", t = 18 / 30, c = ca, v = 0.8 },
            { s = path510 .. "magout2.wav", t = 21 / 30 - 0.15, c = ca, v = 0.8 },
            { s = path510 .. "magin.wav", t = 35 / 30 - 0.05, c = ca, v = 0.8 },
			{ s = pathUTC .. "cloth_2.ogg", t = 42 / 30, c = ca, v = 0.8 },
			{ s = pathUTC .. "movement-rifle-02.ogg", t = 46 / 30, c = ca, v = 0.8 },
            {hide = 0, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_20"] = {
        Source = "reload_empty_20",
        MinProgress = 0.9,
        PeekProgress = 0.825,
        RefillProgress = 0.49,
        FireASAP = true,
        Mult = 0.95,
        EventTable = {
            { s = pathUT .. "reload_start.ogg", t = 0.025, c = ca, v = 0.8 },
            { s = pathUTC .. "magpouch.ogg", t = 5 / 30, v = 0.6 },
            { s = pathUT .. "magrelease.ogg", t = 18 / 30, c = ca, v = 0.8 },
            { s = path510 .. "magout2.wav", t = 21 / 30 - 0.15, c = ca, v = 0.8 },
            { s = path510 .. "magin.wav", t = 35 / 30 - 0.05, c = ca, v = 0.8 },
            { s = path510 .. "chargeback.wav", t = 54 / 30 - 0.05, c = ca, v = 0.5 },
            { s = path510 .. "chargeforward.wav", t = 61 / 30 - 0.1, c = ca, v = 1 },
            { s = pathUTC .. "cloth_3.ogg", t = 74 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 72 / 30, c = ca, v = 0.8 },
            --{hide = 2, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.72, lhik = 0 },
            { t = 0.86, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    -- Inspect

    ["inspect"] = {
        Source = {"inspect"},
        EventTable = {
            { s = pathUTC .. "cloth_1.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 5 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_2.ogg", t = 50 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 52 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_3.ogg", t = 60 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-03.ogg", t = 62 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_2.ogg", t = 102 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 109 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["firemode_1"] = {
        Source = "modeswitch",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-06.ogg", t = 0 },
        }
    },
    ["firemode_2"] = {
        Source = "modeswitch",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-01.ogg", t = 0 },
        }
    },

    ["toggle"] = {
        Source = "modeswitch",
        EventTable = thetoggle
    },
    ["switchsights"] = {
        Source = "modeswitch",
        EventTable = thetoggle
    },
    ["toggle_empty"] = {
        Source = "modeswitch_empty",
        EventTable = thetoggle
    },
    ["switchsights_empty"] = {
        Source = "modeswitch_empty",
        EventTable = thetoggle
    },

    ["enter_bipod"] = {
        Source = "modeswitch",
        IKTimeLine = {
            { t = 0, lhik = 0.5 },
            { t = 0.5, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["enter_bipod_empty"] = {
        Source = "modeswitch_empty",
    },
    ["exit_bipod"] = {
        Source = "modeswitch",
        IKTimeLine = {
            { t = 0, lhik = 0.5 },
            { t = 0.5, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["exit_bipod_empty"] = {
        Source = "modeswitch_empty",
    },
}

-- SWEP.Hook_TranslateAnimation = function(swep, anim)
--     if !IsFirstTimePredicted() then return end
--     -- theres some mod for arc9eft that makes mag checks on bind and it manipulates EFTInspectnum value so well keep eft in name to keep functionality
--     if anim == "inspect" or anim == "inspect_empty" then
--         swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
--         local rand = swep.EFTInspectnum
--         if rand == 1 then return anim .. "_look" end
--         if rand == 2 then swep.EFTInspectnum = 0 rand = 0 end
--     end
-- end

---- Attachments
SWEP.DefaultBodygroups = "00000000070" -- Might as well prepare for the future

SWEP.Hook_ModifyBodygroups = function(wep, data)
	local eles = data.elements
	local mdl = data.model

    -- local short, long, rail = eles["uplp_fal_hg_paras"], eles["uplp_fal_hg_sniper"] or eles["uplp_fal_hg_para"], eles["uplp_fal_hg_para"] or eles["uplp_fal_hg_paras"]

	if eles["uplp_optic_micro"] or eles["uplp_optic_mid"] or eles["uplp_optic_big"] then
        mdl:SetBodygroup(5,1)
    end
	
end

SWEP.Hook_ModifyElements = function(wep, eles)
    if ( eles["uplp_optic_micro"] or eles["uplp_optic_mid"] or eles["uplp_optic_big"] ) and !eles["uplp_sg510_barrel_amt"] then
        eles["stgw57_sightsdown"] = true
    end

    if eles["uplp_optic_big"] and eles["uplp_sg510_barrel_amt"] then
        eles["nope"] = true
    end

    -- if wep:GetBipod() then
        -- eles["extralhik"] = true
    -- end

    -- return eles
end

SWEP.AttachmentElements = {
    ["uplp_sg510_mag_ext"] =  { Bodygroups = { { 3, 1 } }, },
    ["uplp_sg510_mag_762"] =  { Bodygroups = { { 3, 2 } }, },
    ["uplp_sg510_stock_plastic"] =  { Bodygroups = { { 1, 1 } }, },
    ["uplp_sg510_stock_wood"] =  { Bodygroups = { { 1, 2 } }, },
    ["uplp_sg510_barrel_amt"] =  { Bodygroups = { { 2, 1 }, { 4, 2 } },
	AttPosMods = {[2] = { Pos = Vector(0.03, -0.57, 25.9), }}	
	},
    ["stgw57_sightsdown"] =  { Bodygroups = { { 4, 1 }, }, },
    ["nope"] =  { Bodygroups = { { 4, 3 }, }, },
	
    -- AttPosMods = {[4] = { Pos = Vector(-1.17, 0.65, 14.1), }} },
}

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_micro", "uplp_optic_mid", "uplp_optic_big"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "stgw57_root",
        Pos = Vector(0.03, -2.2, 0.7),
        Ang = Angle(90, 90, 180),
		CorrectiveAng = Angle(0.595, 0.38, 0)
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_muzzle"},
        Bone = "stgw57_root",
		Scale = 1.3,
        Pos = Vector(0.03, -0.57, 29.3),
        Ang = Angle(90, 90, 180),
		Icon_Offset = Vector(-2, 0, 0),
    },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        -- Category = {"uplp_tac"},
        -- Bone = "body",
        -- Pos = Vector(-0.78, 1.3, 23.7),
        -- Ang = Angle(90, 90, -90),
        -- Icon_Offset = Vector(0, 0, 0),
        -- ExcludeElements = {"uplp_no_tactical"},
    -- },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_sg510_barrel"},
        DefaultIcon = Material(defatt2 .. "scarupper.png", "mips smooth"),
        Bone = "stgw57_root",
        Pos = Vector(0, -1, 18),
        Ang = Angle(90, 90, 180),
        Icon_Offset = Vector(-6.5, 0, -0.5),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_sg510_mag"},
        DefaultIcon = Material(defatt2 .. "scarmag.png", "mips smooth"),
        Bone = "stgw57_root",
        Pos = Vector(0, 5, 3),
        Ang = Angle(90, 90, 180),
    },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        -- Category = {"uplp_fal_grip"},
        -- DefaultIcon = Material(defatt2 .. "argrip.png", "mips smooth"),
        -- ActiveElements = {"uplp_ak_grip"},
        -- Bone = "body",
        -- Pos = Vector(0, 5, -1.5),
        -- Ang = Angle(90, 90, 180),
    -- },
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_sg510_stock"},
        DefaultIcon = Material(defatt2 .. "akstock.png", "mips smooth"),
        Bone = "stgw57_root",
        Pos = Vector(0, -0.5, -8),
        Ang = Angle(90, 90, 180),
		Installed = "uplp_sg510_stock_plastic"
    },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_backup"),
        -- Category = {"uplp_backup_optic"},
        -- DefaultIcon = Material(defatt .. "rs.png", "mips smooth"),
        -- Bone = "body",
        -- Pos = Vector(0, -0.4, -1.5),
        -- Ang = Angle(90, 90, 180),
        -- ExcludeElements = {"uplp_no_backup"},
        -- RequireElements = {"use_optics"},
        -- Icon_Offset = Vector(-1, 0, 0),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_backup"),
        -- Category = {"uplp_backup_optic_front"},
        -- Bone = "body",
        -- Pos = Vector(0, -0.4, 7.2),
        -- Ang = Angle(90, 90, 180),
        -- RequireElements = {"uplp_backup_optic_is"},
        -- Installed = "uplp_backup_optic_is_front",
        -- Integral = "uplp_backup_optic_is_front",
        -- Hidden = true,
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_backup"),
        -- Category = {"uplp_fal_hg_extra"},
        -- Bone = "body",
        -- Pos = Vector(0, 0.5, 17),
        -- Ang = Angle(90, 90, 180),
        -- RequireElements = {"extralhik"},
        -- Installed = "uplp_fal_hg_aus_extralhik",
        -- Integral = "uplp_fal_hg_aus_extralhik",
        -- Hidden = true,
    -- },



    -- -- Cosmetic shit
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_charm"),
        -- Category = "charm",
        -- Bone = "body",
        -- Pos = Vector(0.77, 0.9, -3.65),
        -- Ang = Angle(90, 0, -90),
    -- },


    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " A",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/fal_1.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 1 + 1.5, 0),
        -- Ang = Angle(90, 90, 180),
        -- ExcludeElements = {"fal_dc"},
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " B",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/fal_2.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 1 + 1.5, -2),
        -- Ang = Angle(90, 90, 180),
        -- ExcludeElements = {"fal_dc"},
    -- },

    -- { -- fal dustcover stickerr
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " A",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/fal_1r.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 1 + 1.5, 0),
        -- RequireElements = {"fal_dc"},
    -- },

    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " B",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/fal_2r.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 1 + 1.5, -2),
        -- RequireElements = {"fal_dc"},
    -- },

    -- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker_mag"),
        -- StickerModel = "models/weapons/arc9/uplp/stickers/fal_mag.mdl",
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(0, 3.75 + 1.5, 4.75),
        -- Ang = Angle(90, 90, 180),
    -- },
}

SWEP.HookP_NameChange = function(self, name)
    local att = self:GetElements()

    -- Default Name (If RPK name or not)
    if att["uplp_sg510_mag_762"] then
        return "AMT 57"
    end

end


-- edits to make bipod network gun atts, bipod forces new attachment for new lhik

-- function SWEP:EnterBipod()
    -- if self:GetBipod() then return end

    -- self:SetBipod(true)
    -- local soundtab1 = {
        -- name = "enterbipod",
        -- sound = self:RandomChoice(self:GetProcessedValue("EnterBipodSound", true))
    -- }
    -- self:PlayTranslatedSound(soundtab1)
    -- self:PlayAnimation(self.SightIsAlsoBipodAnims and "enter_sights" or "enter_bipod", 1, true)
    -- self:SetEnterBipodTime(CurTime())

    -- local owner = self:GetOwner()

    -- self:SetBipodAng(owner:EyeAngles())
    -- self:SetBipodPos(owner:EyePos() + (owner:EyeAngles():Forward() * 4) - Vector(0, 0, 2))

    -- self:ExitSights()


    -- -- our change
    -- self:SendWeapon()
-- end

-- function SWEP:ExitBipod(force)
    -- if !self:GetBipod() then return end

    -- self:SetBipod(false)
    -- local soundtab1 = {
        -- name = "exitbipod",
        -- sound = self:RandomChoice(self:GetProcessedValue("ExitBipodSound", true))
    -- }
    -- self:PlayTranslatedSound(soundtab1)
    -- self:SetEnterBipodTime(CurTime())

    -- self:PlayAnimation(self.SightIsAlsoBipodAnims and "exit_sights" or "exit_bipod", 1, true)

    -- self:CancelReload()

    -- self:ExitSights()


    -- -- our change
    -- self:SendWeapon()
-- end

-- Moka's shit
SWEP.Recoil = 0.55
SWEP.RecoilAutoControl = 2.5
SWEP.RecoilAutoControlMultShooting = 0.05

SWEP.RecoilMultRecoil = 1.3
SWEP.RecoilMultSights = 0.875

SWEP.Spread = 0
SWEP.SpreadAddHipFire = 0.035

SWEP.SpreadAddRecoil = 0.03
SWEP.SpreadAddMove = 0.02

SWEP.RecoilPerShot = 0.2
SWEP.RecoilDissipationRate = 5
SWEP.RecoilResetTime = 0.05

SWEP.RecoilModifierCapSights = 0.2
