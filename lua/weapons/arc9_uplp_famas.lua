AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 2 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "Baguette FR" --ARC9:GetPhrase("uplp_weapon_famas")
SWEP.Description = [[The "Fusil d'Assault Modèle 1975" (Assault Rifle Model of 1975) is the former standard issue rifle of the French Army and is still in use by the French Navy. Noted for its various idiosyncracies that distinguish it from similar rifles, such as an odd magazine capacity, integrated bipod and unique blowback operation. The "Amélioré" model is a modern variant designed to integrate into a modular special forces kit, which updates the rifle to have accessory rails and a low profile upper receiver.]] --ARC9:GetPhrase("uplp_weapon_aug_desc")

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_ar") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_ar") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = "FAMAS Valorisé", --ARC9:GetPhrase("uplp_weapon_aug_real")

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = "GIAT", --ARC9:GetPhrase( "uplp_weapon_aug_manufacturer" )
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_5.56x45mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = "Lever-delayed blowback", --ARC9:GetPhrase( "uplp_mechanism_leverdelay" )
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_france" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1975" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "Moka, 8Z, speedonerd",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "TastyTony",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Partexedd, inspect by Darsu",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "rzen1th, speedonerd",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}

SWEP.StandardPresets = {
"[Commando Forces]XQAAAQCrAQAAAAAAAAA9iIIiM7tuo1AtUBf3wUZrgpRXm4Oq0ep9StmT7dClioBEa1QpANz4hrNJ6iaZJ04t7tkbIdBtVk/lO7sGjJZDvBOIRiHfayJRkMZZ6swBv/W6T6Pw+pitCftwjt8BSYk8Gp4N3Cks9REDgpvSDPuF32ORB7zFaVhcW9nj4NqJ2CfUeGR2LdUWeK1LvT1PbTHHUpVCaEsZorNMiS8lTbfuaHRP7dQ0BfnlxQ=="
}

SWEP.DefaultBodygroups = "00000000000000" -- Might as well prepare for the future

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_3"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_556.mdl"
SWEP.ShellScale = 1.0
SWEP.ShellPitch = 100

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_famas.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_famas.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_ar15.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-5.5, 3, -6),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(-8, 2, -5),
    TPIKAng = Angle(-12, -0, 180),
    Scale = 1,

    TPIKPosSightOffset = Vector(-1, 3, -2),
}

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, -0.28, -0.7)
SWEP.SprintPos = Vector(4,0,-1.25)
SWEP.SprintAng = Angle(40,-5,-20)

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

---- Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 15
SWEP.DamageMin = 10
SWEP.DamageType = DMG_BULLET

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.8,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
}

SWEP.Penetration = 15 -- Units of wood that can be penetrated
SWEP.ImpactForce = 2 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 25 / ARC9.HUToM
SWEP.RangeMax = 75 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 715 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1
SWEP.ClipSize = 25

-- Recoil
SWEP.Recoil = 1
SWEP.RecoilUp = 0.7
SWEP.RecoilSide = 0.9

SWEP.RecoilRandomUp = 0.6
SWEP.RecoilRandomSide = 0.6

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 2.5

SWEP.RecoilMultSights = 0.75
SWEP.RecoilMultCrouch = 0.85

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = 0 -- Vertical tilt
SWEP.VisualRecoilSide = 0.01 -- Horizontal tilt
SWEP.VisualRecoilRoll = -2.5 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .25

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 0.2
SWEP.VisualRecoilSideHipFire = -0.1
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.66
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0.004
SWEP.SpreadAddHipFire = 0.035

SWEP.SpreadAddRecoil = 0.011
SWEP.SpreadAddMove = 0.006
SWEP.SpreadAddMidAir = 0.05

SWEP.SpreadMultSights = 1
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 7
SWEP.RecoilResetTime = 0.02
SWEP.RecoilPerShot = 1 / 5
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapSights = 1

SWEP.RecoilPerShotMultSights = 0.5

-- Intensify recoil-induced spread when hipfiring; as a fraction of SpreadAddHipFire
SWEP.HipfireBloomAmplification = 0.2

-- Weapon handling
SWEP.Speed = 0.85 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.75 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.33 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.37 -- Time it takes to fully enter sprint

-- SWEP.SwayAddSights = 1
SWEP.BarrelLength = 36

SWEP.Bipod = true
SWEP.SpreadAddBipod = -0.002
SWEP.RecoilMultBipod = 0.2
SWEP.RecoilPerShotMultBipod = 0.5

-- Shooting and Firemodes
SWEP.RPM = 900 -- How fast gun shoot
SWEP.HeatCapacity = 130 * 1.5 -- For suppresors; how many shots for full heat With big silencer (Small silencers will make this number lower down to 70%)

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
	 { Mode = 3, -- Burst
     },
    { Mode = -1, -- Full
     },    
    { Mode = 1, -- Semi
    RPM = 650,
     }
}

SWEP.PostBurstDelay = 0.15
SWEP.RunawayBurst = true

SWEP.ShootPitch = 100
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
     Pos = Vector(-2.281, -3, -0.56),
     Ang = Angle(0.0, -1, 0),
     Magnification = 1.15,
     ViewModelFOV = 65,
}

-- local is_tall = {
    -- Pos = Vector(-2.275, -3, -0.15),
    -- Ang = Angle(0, 0.05, 0),
    -- Magnification = 1.15,
    -- ViewModelFOV = 65,
-- }

-- local is_short = {
    -- Pos = Vector(-2.275, -3, -0.01),
    -- Ang = Angle(0, 0.05, 0),
    -- Magnification = 1.15,
    -- ViewModelFOV = 65,
-- }

-- SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    -- local attached = self:GetElements()

    -- if attached["uplp_ar15_rs_tall"] then
        -- return is_tall
    -- elseif attached["uplp_ar15_rs_short"] then
        -- return is_short
    -- end
-- end

-- Customization Menu Info
SWEP.CustomizePos = Vector(11.5, 40, 3)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(11.5, -2.5, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 25, 0)
SWEP.CustomizeSnapshotFOV = 60

-- Dropped Magazine
SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/famas_mag_std.mdl"
SWEP.DropMagazineTime = 0.7
SWEP.DropMagazineQCA = 5
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 90, 90)
SWEP.DropMagazineVelocity = Vector(0, -40, -20)

---- Sounds

-- urbna!
local pathFAMAS = ")uplp/famas/"
local pathUT = ")uplp_urban_temp/ar15/"
local pathUTREAL = ")uplp_rz/aug/"
local pathUTC = ")uplp_urban_temp/common/"

SWEP.ShootSound = {
    pathFAMAS .. "fire-01.wav",
    pathFAMAS .. "fire-02.wav",
    pathFAMAS .. "fire-03.wav",
}

SWEP.ShootSoundSilenced = {
    pathUT .. "fire-sup-01.wav",
    pathUT .. "fire-sup-02.wav",
    pathUT .. "fire-sup-03.wav",
}

SWEP.ShootSoundSilencedIndoor = SWEP.ShootSoundSilenced

SWEP.DistantShootSound = {
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-01.wav",
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-02.wav",
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-03.wav",
}
SWEP.DistantShootSoundIndoor = {
    pathUTC .. "556tails/fire-dist-556x45-rif-int-01.wav",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-02.wav",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-03.wav",
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
    [1] = "bullet1",
    [2] = "bullet2",
    [3] = "bullet3",
}

SWEP.HideBones = {
    "fakemag",
    "fakerounds",
    "bullet1",
    "bullet2",
    "bullet3",
    "bullet4",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "fakemag",
        "bullet1",
        "bullet2",
        "bullet3",
        "bullet4",
    },
    [2] = {
        "mag",
        "fakerounds",
    },
}

local mechh = {
    pathUT .. "mech-01.wav",
    pathUT .. "mech-02.wav",
    pathUT .. "mech-03.wav",
    pathUT .. "mech-04.wav",
}

local mechh45 = {
    pathUT .. "45/mech-01.wav",
    pathUT .. "45/mech-02.wav",
    pathUT .. "45/mech-03.wav",
    pathUT .. "45/mech-04.wav",
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
        IKTimeLine = { { t = 0, lhik = 1 } },
    },
    ["ready"] = {
        Source = "ready",
        MinProgress = 0.75,
        FireASAP = true,
        EventTable = {
            { s = pathUTC .. "raise.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathFAMAS .. "chback.ogg", t = 3 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "chforward.ogg", t = 11 / 30, c = ca, v = 1 },
            { s = pathUTC .. "cloth_4.ogg", t = 32 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.5, lhik = 0 },
            { t = 0.8, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["draw"] = {
        Source = "draw",
        MinProgress = 0.6,
        FireASAP = true,
        EventTable = {
            { s = pathUTC .. "raise.ogg", t = 0 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster"] = {
        Source = "holster",
        MinProgress = 0.4 / 0.8,
        Mult = 0.8,
        EventTable = {
            { s = pathUTC .. "rattle2.ogg", t = 0 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = { { t = 0, lhik = 1 } },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        MinProgress = 0.6,
        FireASAP = true,
        EventTable = {
            { s = pathUTC .. "raise.ogg", t = 0 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        MinProgress = 0.4 / 0.8,
        Mult = 0.8,
        EventTable = {
            { s = pathUTC .. "rattle2.ogg", t = 0 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = { { t = 0, lhik = 1 } },
    },

    ["fire"] = {
        Source = {"fire_01","fire_02","fire_03"},
        ShellEjectAt = 0.01,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = { { s = mechh, t = 0 } },
    },
    ["fire_sights"] = {
        Source = {"fire_sights"},
        ShellEjectAt = 0.01,
        Mult = 0.65,
        NoIdle = true,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = { { s = mechh, t = 0 } },
    },

    ["fire_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0.01,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = { { s = pathUT .. "mech_last.wav", t = 0 } },
    },
    ["fire_sights_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0.01,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = { { s = pathUT .. "mech_last.wav", t = 0 } },
    },

    ["fire_empty_alt"] = {
        Source = {"fire_01","fire_02","fire_03"},
        ShellEjectAt = 0.01,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = { { s = pathUT .. "mech_last.wav", t = 0 } },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        MinProgress = 0.85,
        PeekProgress = 0.85,
        RefillProgress = 0.55,
        FireASAP = true,
        Mult = 1,
        EventTable = {
            { s = pathUTC .. "magpouch.ogg", t = 4 / 30, v = 0.4 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathFAMAS .. "magrel.ogg", t = 7 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "magout.ogg", t = 8 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "magplace.ogg", t = 21 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "magin.ogg", t = 23 / 30, c = ca, v = 1 },
            { s = pathUTC .. "cloth_4.ogg", t = 35 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 40 / 30, c = ca, v = 0.8 },

            {hide = 2, t = 0},
            {hide = 0, t = 0.4},
            {hide = 1, t = 0.7},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.6, lhik = 0 },
            { t = 0.975, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        MinProgress = 0.89,
        PeekProgress = 0.85,
        RefillProgress = 0.4,
        FireASAP = true,
        Mult = 1,
        EventTable = {
            { s = pathUTC .. "magpouch.ogg", t = 4 / 30, v = 0.4 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathFAMAS .. "magrel.ogg", t = 7 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "magout.ogg", t = 8 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "magplace.ogg", t = 21 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "magin.ogg", t = 23 / 30, c = ca, v = 1 },
            { s = pathUTC .. "cloth_1.ogg", t = 25 / 30, c = ca, v = 0.8 },
            { s = pathFAMAS .. "chback.ogg", t = 41 / 30, c = ca, v = 1 },
            { s = pathFAMAS .. "chforward.ogg", t = 46/ 30, c = ca, v = 1 },
            { s = pathUTC .. "cloth_4.ogg", t = 50 / 30, c = ca, v = 0.3 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 52.5 / 30, c = ca, v = 0.3 },

            {hide = 2, t = 0},
            {hide = 0, t = 0.4},
            {hide = 1, t = 0.7},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    -- Inspecc --

    ["inspect"] = {
        Source = "inspect",
        FireASAP = true,
        MinProgress = 0.925,
        Mult = 1,
        EventTable = {
            { s = pathUTC .. "cloth_1.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 5 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_2.ogg", t = 70 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 75 / 30, c = ca, v = 0.8 },
            { s = pathFAMAS .. "chback.ogg", t = 90 / 30, c = ca, v = 1 },
            { s = ")uplp_rz/mp9/chforward.ogg", t = 113.5 / 30, c = ca, v = 1 },
            { s = pathUTC .. "cloth_3.ogg", t = 122 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-03.ogg", t = 130 / 30, c = ca, v = 0.8 },
            -- {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.825, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    ["inspect_empty"] = {
        Source = "inspect",
        FireASAP = true,
        MinProgress = 0.925,
        Mult = 1,
        EventTable = {
            { s = pathUTC .. "cloth_1.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 5 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_2.ogg", t = 70 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 75 / 30, c = ca, v = 0.8 },
            { s = pathFAMAS .. "chback.ogg", t = 90 / 30, c = ca, v = 1 },
            { s = ")uplp_rz/mp9/chforward.ogg", t = 113.5 / 30, c = ca, v = 1 },
            { s = pathUTC .. "cloth_3.ogg", t = 122 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-03.ogg", t = 130 / 30, c = ca, v = 0.8 },
            {hide = 2, t = 0.2},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.825, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["toggle"] = {
        Source = "modeswitch",
        EventTable = thetoggle
    },
    ["toggle_empty"] = {
        Source = "modeswitch_empty",
        EventTable = thetoggle
    },

    ["switchsights"] = {
        Source = "modeswitch",
        EventTable = thetoggle
    },
    ["switchsights_empty"] = {
        Source = "modeswitch_empty",
        EventTable = thetoggle
    },
    ["firemode_1"] = {
        Source = "modeswitch",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-01.ogg", t = 0.1, v = 0.4 },
        }
    },
    ["firemode_1_empty"] = {
        Source = "modeswitch_empty",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-01.ogg", t = 0.1, v = 0.4 },
        }
    },

    ["firemode_2"] = {
        Source = "modeswitch",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-06.ogg", t = 0.1, v = 0.4 },
        }
    },
    ["firemode_2_empty"] = {
        Source = "modeswitch_empty",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-06.ogg", t = 0.1, v = 0.4 },
        }
    },    
	["firemode_3"] = {
        Source = "modeswitch",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-06.ogg", t = 0.1, v = 0.4 },
        }
    },
    ["firemode_3_empty"] = {
        Source = "modeswitch_empty",
        EventTable = {
            { s = ")uplp_urban_temp/ar15/selector-06.ogg", t = 0.1, v = 0.4 },
        }
    },
    ["enter_bipod"] = {
        Source = "modeswitch",
    },
    ["enter_bipod_empty"] = {
        Source = "modeswitch_empty",
    },
    ["exit_bipod"] = {
        Source = "modeswitch",
    },
    ["exit_bipod_empty"] = {
        Source = "modeswitch_empty",
    },

    ["dryfire"] = {
        Source = "modeswitch",
    },
    ["dryfire_empty"] = {
        Source = "modeswitch_empty",
    },
}

---- Attachments
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model

    if eles["uplp_optic_used"] or eles["uplp_ar15_rs"] or eles["uplp_backup_optic"] then
        mdl:SetBodygroup(2, 1)
    end

    if eles["uplp_ubgl_m203_rail"] then
        mdl:SetBodygroup(6, 4)
    end

    if eles["uplp_muzzle_used"] then
        mdl:SetBodygroup(4, 2)
    end
	
	if wep:GetBipod() then
        if wep:GetEnterBipodTime() + 0.2 < CurTime() then
            mdl:SetBodygroup(6, 1)
        end
    end

end

-- SWEP.Hook_ModifyElements = function(self, eles)

    -- if eles["uplp_ar15_handguard_long"] then
        -- if eles["uplp_ar15_gasblock"] then
            -- ["uplp_ar15_gasblock_m16"] = {	AttPosMods = {
                -- [8] = { Pos = Vector(0, 0.975, 17.15) },
            -- }} }
        -- end
    -- end

-- end

SWEP.AttachmentElements = {
    -- STOCKS
    ["uplp_aug_stock_green"] = { Bodygroups = { { 1, 0 } } },
    ["uplp_aug_stock_black"] = { Bodygroups = { { 1, 1 } } },
    ["uplp_aug_stock_tan"] = { Bodygroups = { { 1, 2 } } },
    ["uplp_aug_stock_white"] = { Bodygroups = { { 1, 3 } } },

    -- SCOPE
    --["uplp_aug_top_scope"] = { Bodygroups = { { 2, 1 } } },

    -- IRONS
    ["uplp_optic_used"] = { Bodygroups = { { 2, 1 } } },

    -- BARRELS
    ["uplp_famas_brl_snub"] = { Bodygroups = { { 3, 1 }, { 4, 1 } }, AttPosMods = {
        [4] = { Pos = Vector(0, 1.765, 10.85) },
	} },
	
    -- MUZZLES
    ["uplp_muzzle_used"] = { Bodygroups = { { 4, 1 } } },

    -- GRIPS
    ["uplp_grip_used"] = { Bodygroups = { { 7, 1 } } },
    ["uplp_ubgl_m203_rail"] = { Bodygroups = { { 7, 1 } } },

    -- MAGAZINES
    ["uplp_famas_mag_35"] = { Bodygroups = { { 5, 1 } } },
    ["uplp_famas_mag_15"] = { Bodygroups = { { 5, 2 } } },

}

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_micro", "uplp_optic_mid", "uplp_optic_big"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "body",
        CorrectiveAng = Angle(0, 0, 0),
        Pos = Vector(-0.02, -1, 0.3),
        Ang = Angle(90, 90, 180),
		Scale = 0.8,
        Icon_Offset = Vector(1, 0, 0),
        ExcludeElements = {"uplp_ar15_rs_carry"},
		RejectAttachments = {
			["uplp_optic_generic"] = true,
			["uplp_optic_pm3"] = true,
			["uplp_optic_sniper"] = true,
			["uplp_optic_old"] = true,
			["uplp_optic_bigass"] = true,
        },
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_backup"),
        Category = {"uplp_backup_optic"},
        DefaultIcon = Material(defatt .. "rs.png", "mips smooth"),
        Bone = "body",
        CorrectiveAng = Angle(0, 0, 0),
        Pos = Vector(0, -1.1, -0.4),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_famas_barrel"},
        DefaultIcon = Material(defatt .. "barrel.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, 2, 7),
        Ang = Angle(90, 90, 180),
        ActiveElements = {"uplp_ar15_barrel"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_muzzle"},
        Bone = "body",
        Pos = Vector(0, 1.765, 13.45),
        Ang = Angle(90, 90, 180),
        Scale = 1.1,
        Icon_Offset = Vector(1, 0, 0),
		ActiveElements = {"uplp_muzzle_used"}
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_grip"),
        Category = {"uplp_grip_vert", "uplp_grip_horiz"},
        DefaultIcon = Material(defatt2 .. "grip.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(-0.01, 3.5, 6.2),
        Ang = Angle(90, 90, 180),
		Scale = 0.85
        -- Installed = "uplp_aug_bot_grip",
        -- Integral = "uplp_aug_bot_grip",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        Category = {"uplp_tac"},
        Bone = "body",
        Pos = Vector(0, 0.6, 8.8),
        Ang = Angle(90, 0, -90),
		Scale = 0.85,
        ExcludeElements = {"uplp_no_tactical"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_famas_mag"},
        DefaultIcon = Material(defatt2 .. "armag.png", "mips smooth"),
        Bone = "mag",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, 90, 180),
        Icon_Offset = Vector(0.5, 0, -1),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_backup"),
        Category = {"uplp_backup_optic_front"},
        Bone = "body",
        Pos = Vector(0, -1.1, 3.5),
        Ang = Angle(90, 90, 180),
        RequireElements = {"uplp_backup_optic_is"},
        Installed = "uplp_backup_optic_is_front",
        Integral = "uplp_backup_optic_is_front",
        Hidden = true,
    },



    -- Cosmetic shit
    {
        PrintName = ARC9:GetPhrase("uplp_category_charm"),
        Category = "charm",
        Bone = "body",
        Pos = Vector(0.8, 2.1, 0.5),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " A",
        StickerModel = "models/weapons/arc9/uplp/stickers/uplp_famas_sticker_a.mdl",
        Category = "stickers",
        Bone = "body",
        Pos = Vector(1, 1.8, 6.2),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " B",
        StickerModel = "models/weapons/arc9/uplp/stickers/uplp_famas_sticker_b.mdl",
        Category = "stickers",
        Bone = "body",
        Pos = Vector(1, -0.3, -4.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " C",
        StickerModel = "models/weapons/arc9/uplp/stickers/uplp_famas_sticker_c.mdl",
        Category = "stickers",
        Bone = "body",
        Pos = Vector(1, 1.5, -8.5),
        Ang = Angle(90, 90, 180),
    },


    -- here to not make presets bad
    {
        PrintName = ARC9:GetPhrase("uplp_category_ubgl") or "ubgl",
        Category = {"uplp_m203_rail"},
        -- DefaultIcon = Material(defatt2 .. "grip.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, 5.15, 5.5),
        Ang = Angle(90, 90, 0),
        -- ExcludeElements = {"uplp_no_grip", "uplp_no_ubgl"},
        MergeSlots = {5}, 
        Hidden = true,
    },
}


SWEP.HookP_NameChange = function(self, name)
    local att = self:GetElements()

    if att["uplp_aug_brl_mg"] then
        name = ARC9:GetPhrase("uplp_weapon_aug_mg")
    end

    if att["uplp_aug_smg"] then
        name = ARC9:GetPhrase("uplp_weapon_aug_smg")
    end

    return name
end

-- Moka's shit
--[[]
SWEP.Recoil = 0.33
SWEP.RecoilAutoControl = 2.5
SWEP.RecoilAutoControlMultShooting = 0.3

SWEP.RecoilRandomSide = 1.4

SWEP.RecoilMultRecoil = 2
SWEP.RecoilMultSights = 0.875

SWEP.Spread = 0
SWEP.SpreadAddHipFire = 0.02

SWEP.SpreadAddRecoil = 0.04
SWEP.SpreadAddMove = 0.02

SWEP.RecoilPerShot = 0.125
SWEP.RecoilDissipationRate = 5
SWEP.RecoilResetTime = 0.05

SWEP.RecoilModifierCapSights = 0.2
]]