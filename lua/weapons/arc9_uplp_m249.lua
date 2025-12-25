AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 2 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = ARC9:GetPhrase( "uplp_speedonerd_weapon_m249" )
SWEP.Description = ARC9:GetPhrase( "uplp_speedonerd_weapon_m249_desc" )

SWEP.Class = ARC9:GetPhrase( "uplp_class_weapon_mg" ) -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase( "uplp_category_weapon_mg" ) -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = ARC9:GetPhrase( "uplp_speedonerd_weapon_m249_real" ),

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase( "uplp_speedonerd_weapon_m249_manufacturer" ),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_5.56x45mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = string.format( ARC9:GetPhrase("uplp_mechanism_2" ), ARC9:GetPhrase( "uplp_mechanism_gasoperated" ), ARC9:GetPhrase( "uplp_mechanism_rotatingbolt" ) ),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_usa" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1976" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "speedonerd",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "Kaan, TastyTony",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Partexedd",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "rzen1th",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}


SWEP.StandardPresets = {
	
    "[HUGE-249]XQAAAQDGAAAAAAAAAAA9iIIiM7tupQCpjtobRJEkdZ1fP0HAsr6RlAUCm4d16R22fZrcjYNhvwMauLaXDSQ0jiPTDQ2ChNVWuzhE90kPJPdeu4qvxW+ONeF1YGd028vrzFCbwo5y0Cg+2NWOUgA=",
    "[Navy Mod]XQAAAQBNAQAAAAAAAAA9iIIiM7tupQCpjtobRJEkdZ1fP0HAsr6RlAUCm4d16R22fZrcjYNhvwMauPXvZruJ8ZOWjTHg2CxeNyNcL1V8w8vamjZhNX/AjQjYdAPbNlWjGR28LI9xKjGRcQMyxlyR7AAiZDnHHvsZxEQ0LHVkeoqw/1MbytoLFHDMS9VWNIhrFcf9GxLa1briF/yvrAA=",
    "[Patrol]XQAAAQAsAQAAAAAAAAA9iIIiM7tupQCpjtobRJEkdZ1fP0HAsr6RlAUCm4d16R22fZrcjYNhvwMauPXvZruJ8ZOWjS99s9dEKl0Zwr1iQuW+oTzx9pE1UHv2KOZHniX2AbGlNqck8S9OGasnkFdBSnHn8v5Lo0CNlW9KYBUEsRwnQPNEP49IcMUZMSs/etjWicXsozE=",
    "[GPMG]XQAAAQBlAQAAAAAAAAA9iIIiM7tupQCpjtobRJEkdZ1fP0HAsr6RlAUCm4d16R22fZrcjYNhvwMauPXvZruJ8ZOWjTJaCOaneNjKpGl5+rmYaiOy4ohT/NsaFrZiV/W/rJNyTtlq3zjotgvX9SmxdF06oNC4YZCpHaTQ9OBU6xJNmpIEsKdEjU/88qj4wlPzVcvdnj0q3hEpUYfkGp2mfrTq5k8="

}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_ak47"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_556.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellPitch = 90

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 90, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_m249.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_m249.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
--SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_m249.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-7.5, 4, -8),
    Ang = Angle(-6, 0, 180),
    TPIKPos = Vector(-4.5, 2, -7),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1
}

SWEP.ReloadInSights = false

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(-0.9, -1, 0.7)

SWEP.PeekPos = Vector(-1, 2, -5)
SWEP.PeekAng = Angle(-0.3, 0.1, -40)

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

---- Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 18
SWEP.DamageMin = 12
SWEP.DamageType = DMG_BULLET

SWEP.Penetration = 15
SWEP.ImpactForce = 2

-- Range
SWEP.RangeMin = 30 / ARC9.HUToM
SWEP.RangeMax = 55 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 715 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 0
SWEP.ClipSize = 125

-- Recoil
SWEP.Recoil = 1.6
SWEP.RecoilUp = 1
SWEP.RecoilSide = 1

SWEP.RecoilRandomUp = 1.15
SWEP.RecoilRandomSide = 1.15

SWEP.RecoilRise = 3
SWEP.MaxRecoil = 4
SWEP.RecoilPunch = 3
SWEP.RecoilAutoControl = 1

SWEP.RecoilMultSights = 1
SWEP.RecoilMultCrouch = 0.85

SWEP.RecoilMultBipod = 0.4

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = 0.2 -- Vertical tilt
SWEP.VisualRecoilSide = 0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = -2.5 -- Roll tilt
SWEP.VisualRecoilPunch = 10 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .25

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 2
SWEP.VisualRecoilSideHipFire = -0.1
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 2
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

SWEP.VisualRecoilMultBipod = 0.2

-- Accuracy and Spread
SWEP.Spread = 0.0004
SWEP.SpreadAddHipFire = 0.033

SWEP.SpreadAddRecoil = 0.025
SWEP.SpreadAddMove = 0.02
SWEP.SpreadAddMidAir = 0.05

SWEP.SpreadMultSights = 1
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilResetTime = 0.02
SWEP.RecoilPerShot = 1 / 12
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1

-- Weapon handling
SWEP.Speed = 0.75 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.55 -- When aiming
SWEP.SpeedMultShooting = 0.45

SWEP.AimDownSightsTime = 0.27 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.32 -- Time it takes to fully enter sprint

SWEP.Sway = 0
SWEP.SwayAddSights = -0.15
SWEP.BarrelLength = 40

-- Shooting and Firemodes
SWEP.RPM = 850 -- How fast gun shoot
SWEP.HeatCapacity = 120 * 1.5 -- For suppresors; how many shots for full heat With big silencer (Small silencers will make this number lower down to 70%)

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = -1, -- Full
    PoseParam = 1 },
}

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 0.075
SWEP.TriggerDelayCancellable = false --false
SWEP.TriggerStartFireAnim = false --true

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
     Pos = Vector(-3.44, -3, 2),
     Ang = Angle(0.05, 0.1, 0),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

-- Customization Menu Info
SWEP.CustomizePos = Vector(17, 32.5, 5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(15, -2, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)
SWEP.CustomizeSnapshotFOV = 90

-- Dropped Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/uplp_m249_100.mdl"
SWEP.DropMagazineTime = 1.55
SWEP.DropMagazineTimeEmpty = 2.1
SWEP.DropMagazineQCA = 2
SWEP.DropMagazinePos = Vector(1, 10, -35)
SWEP.DropMagazineAng = Angle(0, 90, 0)
SWEP.DropMagazineVelocity = Vector(20, 10, 0)

---- Sounds
-- urbna!
local pathM249 = "uplp/m249/"
local pathUT = "uplp_urban_temp/ar15/"
local pathUTC = "uplp_urban_temp/common/"

SWEP.ShootSound = {
    pathM249 .. "fire-01.wav",
    pathM249 .. "fire-02.wav",
    pathM249 .. "fire-03.wav",
}

SWEP.ShootSoundSilenced = {
    pathUT .. "fire-sup-01.wav",
    pathUT .. "fire-sup-02.wav",
    pathUT .. "fire-sup-03.wav",
}

SWEP.ShootSoundSilencedIndoor = {
    pathUTC .. "556tails/fire-dist-556x45-rif-int-01.wav",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-02.wav",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-03.wav",
}

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

local mech = {
	
	pathM249 .. "mech-01.wav",
	pathM249 .. "mech-02.wav",
	pathM249 .. "mech-03.wav",

}

---- Animations
-- HideBones, BulletBones, etc.
SWEP.BulletBones = {
    [1] = "bullet1",
    [2] = "bullet2",
    [3] = "bullet3",
    [4] = "bullet4",
    [5] = "bullet5",
    [6] = "bullet6",
    [7] = "bullet7",
    [8] = "bullet8",
    [9] = "bullet9",
    [10] = "bullet10",
    [11] = "bullet11",
    [12] = "bullet12",
}
SWEP.BulletBonesSub1 = true 

local thetoggle = {{
    s = {
        "arc9/toggles/flashlight_laser_toggle_off_01.wav",
        "arc9/toggles/flashlight_laser_toggle_off_02.wav",
        "arc9/toggles/flashlight_laser_toggle_off_03.wav",
        "arc9/toggles/flashlight_laser_toggle_on_01.wav",
        "arc9/toggles/flashlight_laser_toggle_on_02.wav",
        "arc9/toggles/flashlight_laser_toggle_on_03.wav",
    }, t = 0
}}

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
	
    ["ready"] = {
        Source = "ready",
		Mult = 0.85,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 60, c = ca },
            { s = pathM249 .. "chargeback.wav", t = 32 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 42 / 60, c = ca },
            { s = pathM249 .. "end.wav", t = 78 / 60, c = ca },
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
		Mult = 0.85,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 2 / 30, c = ca, v = 0.8 },
        },
		IKTimeLine = {
			{ t = 0, lhik = 1 },
		},
    },
    ["holster"] = {
        Source = "holster",
        MinProgress = 0.8,
		Mult = 0.85,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = pathUTC .. "raise.ogg", t = 0 / 30, c = ca, v = 0.8 },
        },
		IKTimeLine = {
			{ t = 0, lhik = 1 },
		},
    },

    ["fire"] = {
        Source = {"fire"},
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = mech, t = 0, v = 0.5 },
        },
    },
	
	["trigger"] = {
        Source = "idle",
        --Time = 0.15,
        --ShellEjectAt = 0.01,
        EventTable = { { s = pathM249 .. "trigger.wav", t = 0 / 60, v = 1 } },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload_100",
        MinProgress = 0.9,
		PeekProgress = 0.865,
		RefillProgress = 0.82,
		DropMagAt = 1.95,
		FireASAP = true,
        Mult = 0.9,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 60, c = ca },
            { s = pathM249 .. "opentop.wav", t = 20 / 60, c = ca },
            { s = pathM249 .. "beltout.wav", t = 52 / 60, c = ca },
            { s = pathM249 .. "magout.wav", t = 87 / 60, c = ca },
            { s = pathM249 .. "magstruggle.wav", t = 142 / 60, c = ca },
            { s = pathM249 .. "magin.wav", t = 144 / 60, c = ca },
            { s = pathM249 .. "beltin.wav", t = 162 / 60, c = ca },
            { s = pathM249 .. "closetop.wav", t = 230 / 60, c = ca },
            { s = pathM249 .. "topclick.wav", t = 232 / 60, c = ca },
            { s = pathM249 .. "end.wav", t = 257 / 60, c = ca },
        },
		MagSwapTime = 1.4,

        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.1, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty_100",
        MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.83,
		DropMagAt = 2.5,
		FireASAP = true,
        Mult = 0.9,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 60, c = ca },
            { s = pathM249 .. "chargeback.wav", t = 30 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 45 / 60, c = ca },
            { s = pathM249 .. "opentop.wav", t = 80 / 60, c = ca },
            { s = pathM249 .. "magout.wav", t = 127 / 60, c = ca },
            { s = pathM249 .. "magstruggle.wav", t = 190 / 60, c = ca },
            { s = pathM249 .. "magin.wav", t = 193 / 60, c = ca },
            { s = pathM249 .. "beltin.wav", t = 215 / 60, c = ca },
            { s = pathM249 .. "closetop.wav", t = 278 / 60, c = ca },
			{ s = pathM249 .. "topclick.wav", t = 280 / 60, c = ca },
            { s = pathM249 .. "end.wav", t = 303 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.1, lhik = 1 },
            { t = 0.35, lhik = 1 },
            { t = 0.45, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
	
    ["reload_200"] = {
        Source = "reload",
        MinProgress = 0.9,
		PeekProgress = 0.865,
		RefillProgress = 0.81,
		DropMagAt = 1.95,
		FireASAP = true,
        Mult = 0.85,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 60, c = ca },
            { s = pathM249 .. "opentop.wav", t = 20 / 60, c = ca },
            { s = pathM249 .. "beltout.wav", t = 52 / 60, c = ca },
            { s = pathM249 .. "magout.wav", t = 87 / 60, c = ca },
            { s = pathM249 .. "magstruggle.wav", t = 142 / 60, c = ca },
            { s = pathM249 .. "magin.wav", t = 144 / 60, c = ca },
            { s = pathM249 .. "beltin.wav", t = 165 / 60, c = ca },
            { s = pathM249 .. "closetop.wav", t = 230 / 60, c = ca },
            { s = pathM249 .. "topclick.wav", t = 232 / 60, c = ca },
            { s = pathM249 .. "end.wav", t = 257 / 60, c = ca },
        },
		MagSwapTime = 1.4,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.1, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_200"] = {
        Source = "reload_empty",
        MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.83,
		DropMagAt = 2.5,
		FireASAP = true,
        Mult = 0.85,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 60, c = ca },
            { s = pathM249 .. "chargeback.wav", t = 30 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 45 / 60, c = ca },
            { s = pathM249 .. "opentop.wav", t = 80 / 60, c = ca },
            { s = pathM249 .. "magout.wav", t = 127 / 60, c = ca },
            { s = pathM249 .. "magstruggle.wav", t = 190 / 60, c = ca },
            { s = pathM249 .. "magin.wav", t = 193 / 60, c = ca },
            { s = pathM249 .. "beltin.wav", t = 215 / 60, c = ca },
            { s = pathM249 .. "closetop.wav", t = 278 / 60, c = ca },
			{ s = pathM249 .. "topclick.wav", t = 280 / 60, c = ca },
            { s = pathM249 .. "end.wav", t = 304 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.1, lhik = 1 },
            { t = 0.35, lhik = 1 },
            { t = 0.45, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
	
    ["reload_30"] = {
        Source = "reload_30",
        MinProgress = 0.9,
		PeekProgress = 0.865,
		RefillProgress = 0.6,
		DropMagAt = 0.5,
		FireASAP = true,
        Mult = 0.9,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 60, c = ca },
            { s = pathM249 .. "magrel.wav", t = 2 / 60, c = ca },
            { s = pathM249 .. "30magout.wav", t = 16 / 60, c = ca },
            { s = pathM249 .. "30magstruggle.wav", t = 58 / 60, c = ca, v = 0.5 },
            { s = pathM249 .. "30magin.wav", t = 56 / 60, c = ca, v = 1.1 },
            { s = pathM249 .. "end.wav", t = 92 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_30"] = {
        Source = "reload_empty_30",
        MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.4,
		DropMagAt = 0.5,
		FireASAP = true,
        Mult = 0.9,
        EventTable = {
            { s = pathM249 .. "start.wav", t = 0 / 60, c = ca },
            { s = pathM249 .. "magrel.wav", t = 2 / 60, c = ca },
            { s = pathM249 .. "30magout.wav", t = 14 / 60, c = ca },
			--{ s = pathM249 .. "30magstruggle.wav", t = 50 / 60, c = ca, v = 0.5 },
            { s = pathM249 .. "30magin.wav", t = 46 / 60, c = ca },
            { s = pathM249 .. "chargeback_30.wav", t = 120 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 130 / 60, c = ca },
            { s = pathM249 .. "end.wav", t = 151 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.4, lhik = 0 },
            { t = 0.7, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    -- Inspect

    ["inspect"] = {
        Source = {"inspect_30"},
        EventTable = {
            { s = pathUTC .. "cloth_4.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-03.ogg", t = 5 / 30, c = ca, v = 0.8 },
			{ s = pathUTC .. "cloth_2.ogg", t = 44 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 50 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "grab-polymer.ogg", t = 58 / 30, c = ca, v = 1 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 82 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_3.ogg", t = 85 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.4, lhik = 0 },
            { t = 0.48, lhik = 1 },
        },
    },
	
	    -- ["inspect_30"] = {
        -- Source = {"inspect_30"},
        -- EventTable = {
            -- { s = pathUTC .. "cloth_4.ogg", t = 0 / 30, c = ca, v = 0.8 },
            -- { s = pathUTC .. "movement-rifle-03.ogg", t = 5 / 30, c = ca, v = 0.8 },
			-- { s = pathUTC .. "cloth_2.ogg", t = 44 / 30, c = ca, v = 0.8 },
            -- { s = pathUTC .. "movement-rifle-04.ogg", t = 50 / 30, c = ca, v = 0.8 },
            -- { s = pathUTC .. "grab-polymer.ogg", t = 58 / 30, c = ca, v = 1 },
            -- { s = pathUTC .. "movement-rifle-02.ogg", t = 82 / 30, c = ca, v = 0.8 },
            -- { s = pathUTC .. "cloth_3.ogg", t = 85 / 30, c = ca, v = 0.8 },
        -- },
        -- IKTimeLine = {
            -- { t = 0, lhik = 1 },
            -- { t = 0.15, lhik = 0 },
            -- { t = 0.4, lhik = 0 },
            -- { t = 0.48, lhik = 1 },
        -- },
    -- },


    ["firemode_1"] = {
        Source = "firemode_0",
        EventTable = {
            { s = "uplp_urban_temp/ar15/selector-06.wav", t = 0.2 },
        }
    },
    ["firemode_2"] = {
        Source = "firemode_1",
        EventTable = {
            { s = "uplp_urban_temp/ar15/selector-01.wav", t = 0.2 },
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

    ["enter_bipod"] = {
        Source = "modeswitch",
    },
    ["exit_bipod"] = {
        Source = "modeswitch",
    },
}

SWEP.Hook_TranslateAnimation = function(swep, anim)
    if !IsFirstTimePredicted() then return end
    -- theres some mod for arc9eft that makes mag checks on bind and it manipulates EFTInspectnum value so well keep eft in name to keep functionality
    if anim == "inspect" or anim == "inspect_30" then
        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 1 then return anim .. "_look" end
        if rand == 2 then swep.EFTInspectnum = 0 rand = 0 end
    end
end

---- Attachments
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model
	
	if eles["uplp_m249_hs_std"] then
		mdl:SetBodygroup(1, 1)
	end
	
	if eles["uplp_m249_hs_mod"] then
		mdl:SetBodygroup(1, 2)
	end

end

SWEP.AttachmentElements = {

	["uplp_m249_mag_200"] = 	   { Bodygroups = { { 4, 1 } } },
	["uplp_m249_mag_30"] = 	   { Bodygroups = { { 4, 2 } } },
	["uplp_m249_mag_60"] = 	   { Bodygroups = { { 4, 3 } } },
	
	["uplp_m249_brl_commando"] =   {Bodygroups = { { 3, 1 } } , AttPosMods = {[2] = { Pos = Vector(0, -2, 9.5), }}},
	["uplp_m249_brl_saw"] =   {Bodygroups = { { 3, 2 } } , AttPosMods = {[2] = { Pos = Vector(0, -2, 16), }}},
	["uplp_m249_brl_para"] =   {Bodygroups = { { 3, 3 } } , AttPosMods = {[2] = { Pos = Vector(0, -2, 8.8), }}},
	
	["uplp_m249_stock_std"] =   {Bodygroups = { { 2, 1 } } },
	["uplp_m249_stock_buffer"] =   {Bodygroups = { { 2, 2 } } },

}

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachments/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_micro", "uplp_optic_mid"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "topcover",
        Pos = Vector(-0.25, -0.9, -5.3),
        Ang = Angle(90, 90, 180),
        CorrectiveAng = Angle(0.02, 0, 0),
		RejectAttachments = {
        ["uplp_optic_pso_rail"] = true,
	    ["uplp_optic_dcl110"] = true,
        ["uplp_optic_ez6x"] = true,
        },
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_muzzle"},
        Bone = "body",
        Pos = Vector(0, -2, 15.2),
        Ang = Angle(90, 90, 180),
		Installed = "uplp_muzzle_cage",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_m249_barrel"},
        DefaultIcon = Material(defatt2 .. "m249_bar.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, -1, 5),
        Icon_Offset = Vector(-5, 0, 0.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase( "uplp_category_m249_heatshield" ),
        Category = {"uplp_handguard_m249"},
        Bone = "body",
        Pos = Vector(0, -4, 8.5),
        Ang = Angle(90, 90, 180),
        Icon_Offset = Vector(-6.5, 0, -0.5),
		ExcludeElements = {"uplp_m249_brl_para", "uplp_m249_brl_commando"},
        Installed = "uplp_m249_hs_std"
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_m249_mag"},
        DefaultIcon = Material(defatt2 .. "m249_mag.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(3, 0, -4),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_m249_stock"},
        DefaultIcon = Material(defatt2 .. "m249_stock.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, -1, -15),
        Ang = Angle(90, 90, 180),
        Installed = "uplp_m249_stock_std"
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_bipod"),
        Category = {"uplp_bipod_m249"},
        DefaultIcon = Material(defatt .. "bipod.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(-0.3, -5.5, 7.643),
        Icon_Offset = Vector(0, -0.3, -5),
        Ang = Angle(90, 90, 180),
		ExcludeElements = {"uplp_m249_brl_saw", "uplp_m249_brl_commando"},
		Installed = "uplp_m249_bipod",
    },



    -- Cosmetic shit
    {
        PrintName = ARC9:GetPhrase("uplp_category_charm"),
        Category = "charm",
        Bone = "body",
        Pos = Vector(0.8, -2, -6),
        Ang = Angle(90, 0, -90),
    },


    {
        PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " A",
        StickerModel = "models/weapons/arc9/uplp/stickers/uplp_m249_sticker_a.mdl",
        Category = "stickers",
        Bone = "body",
        Pos = Vector(1, -1.5, -9),
        Ang = Angle(90, 90, 180),
    },    
	{
        PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " B",
        StickerModel = "models/weapons/arc9/uplp/stickers/uplp_m249_sticker_b.mdl",
        Category = "stickers",
        Bone = "body",
        Pos = Vector(1, -1.5, -2.7),
        Ang = Angle(90, 90, 180),
    },	
	-- {
        -- PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " C",
        -- StickerModel = "models/weapons/arc9/uplp/stickers/uplp_m249_sticker_box.mdl",
		-- ExcludeElements = {"uplp_m249_mag_30", "uplp_m249_mag_60"},
        -- Category = "stickers",
        -- Bone = "body",
        -- Pos = Vector(1, 3, -6.5),
        -- Ang = Angle(90, 90, 180),
    -- },

}

SWEP.HookP_NameChange = function(self, name)
    local att = self:GetElements()

    defname = "SAW-46"

    cal = "SAW-46"

    name = "SAW-46"

    names = "SAW-46"

    return names
end
