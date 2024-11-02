AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 2 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "SAW-46"
SWEP.Description = [[
A popular "squad automatic weapon" designed with modularity in mind, allowing it to fit a variety of squad roles.
While it's primarily meant to use ammunition belts, the SAW-46 can also accept AR-15 magazines in a separate magwell.
]]

SWEP.Class = "Light-Machine Gun" -- In the Customization Menu
SWEP.SubCategory = "Machine Gun" -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = "M249 SAW",

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = "FN America",
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_5.56x45mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = "Gas-operated, Open rotating bolt",
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

	"[Navy Mod]XQAAAQAxAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvJZHs6byFCnDJdwgfXjhzuQnlIscFViI1VFeJosO3LEZ3tKXQN6uGRHoy6PgAGIZHQNJ9N2VzXF2MHqlfotdCJqNN1oP3aU36gUxpAe5rcUDAdEXiigefU8zNY+ZfD/YKH1mVx2+9Fs2RV6IOncAx5aKcvdYgjMzUkxboCGSMcVg7SfAA==",
	"[HUGE-249]XQAAAQDEAAAAAAAAAAA9iIIiM7hMNz0dhIkbkvJZHs6byFCnDJdwgfXjhzuPmCZlzL7XO8ZTikto/sOhM5uMURa4j5lbL3znbFuuQQnFTXRnKW2ZPZsVMe81REAecOcxSnry/pR9qypbwppgP+qbZ7hRKF6PkA==",
	"[Patrol]XQAAAQAPAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvJZHs6byFCnDJdwgfXjhzuPmCZlzL7XO8ZTikto/sOhN9wghYUFN6rGkI1lFmwMdKL4m4nsUp7pwVG3Kd+wfgyD8xUjz6A9igaLgtd5VtFQldRpQkuU8MlcKkeyrd6OS85G/fD9g4vdW39bpv2+wwM0LbBG5vmGZiFzFvQ="
	
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
SWEP.WorldModel = "models/weapons/arc9/w_uplp_ak.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_ak.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -8),
    Ang = Angle(0, 0, 180),
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
-- make sure ak12 matches this
SWEP.DamageMax = 34
SWEP.DamageMin = 18
SWEP.HeadshotDamage = 1
SWEP.DamageType = DMG_BULLET

SWEP.Penetration = 18
SWEP.ImpactForce = 4

-- Range
SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 90 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 715 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 0
SWEP.ClipSize = 125

-- Recoil
SWEP.Recoil = 1.1
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0.95

SWEP.RecoilRandomUp = 1
SWEP.RecoilRandomSide = 1

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.2

SWEP.RecoilMultSights = 1
SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultBipod = 0.4

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = 0.1 -- Vertical tilt
SWEP.VisualRecoilSide = -0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = 10 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .1

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 2
SWEP.VisualRecoilSideHipFire = -0.2
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.5
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0.0045
SWEP.SpreadAddHipFire = 0.03 - 0.01

SWEP.SpreadAddRecoil = 0.015
SWEP.SpreadAddMove = 0.02
SWEP.SpreadAddMidAir = 0.05

SWEP.SpreadMultSights = 1
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilResetTime = 0.02
SWEP.RecoilPerShot = 1 / 9
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1

-- Weapon handling
SWEP.Speed = 0.75 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.7 / 0.85 -- When aiming
SWEP.SpeedMultShooting = 0.6

SWEP.AimDownSightsTime = 0.42 - 0.1 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.5 - 0.1 -- Time it takes to fully enter sprint

SWEP.SwayAddSights = 1
SWEP.BarrelLength = 40

-- Shooting and Firemodes
SWEP.RPM = 850 -- How fast gun shoot
SWEP.HeatCapacity = 120 * 1.5 -- For suppresors; how many shots for full heat With big silencer (Small silencers will make this number lower down to 70%)

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = -1, -- Full
    PoseParam = 1 },
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
     Pos = Vector(-3.44, -3, 2),
     Ang = Angle(0.05, 0.1, 0),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

     if attached["uplp_ak_brl_su"] then
        return {
             Pos = Vector(-2.3, -3, 0.8),
             Ang = Angle(0.375, 0, -2.5),
             Magnification = 1.15,
             ViewModelFOV = 60,
        }
    end

     if attached["uplp_ak_brl_109"] then
        return {
             Pos = Vector(-2.3, -3, 0.875),
             Ang = Angle(0.34, 0, -2.5),
             Magnification = 1.15,
             ViewModelFOV = 60,
        }
    end
end

-- Customization Menu Info
SWEP.CustomizePos = Vector(17, 32.5, 5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(15, -2, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)
SWEP.CustomizeSnapshotFOV = 90

-- Dropped Magazine
SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/arc9/magazines/uplp_m249_100.mdl"
SWEP.DropMagazineTime = 1.6
SWEP.DropMagazineTimeEmpty = 2.1
SWEP.DropMagazineQCA = 2
SWEP.DropMagazinePos = Vector(2, 0, -18)
SWEP.DropMagazineAng = Angle(0, 90, 0)
SWEP.DropMagazineVelocity = Vector(20, 10, 0)

---- Sounds
-- urbna!
local pathUT = "uplp_urban_temp/ar15/"
local pathUTC = "uplp_urban_temp/common/"
local pathM249 = "weapons/arc9/uplp_m249/"

SWEP.ShootSound = {
    pathM249 .. "fire.ogg",
    --pathM249 .. "fire2.ogg",
}

SWEP.ShootSoundSilenced = {
    pathM249 .. "supp.ogg",
}

SWEP.ShootSoundSilencedIndoor = SWEP.ShootSoundSilenced

SWEP.DistantShootSound = {
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-01.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-02.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-03.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-04.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-05.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-ext-06.ogg",
}
SWEP.DistantShootSoundIndoor = {
    pathUTC .. "556tails/fire-dist-556x45-rif-int-01.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-02.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-03.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-04.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-05.ogg",
    pathUTC .. "556tails/fire-dist-556x45-rif-int-06.ogg",
}

SWEP.DistantShootSoundSilenced = {
    pathUTC .. "generictails/sup-tail-01.ogg",
    pathUTC .. "generictails/sup-tail-02.ogg",
    pathUTC .. "generictails/sup-tail-03.ogg",
    pathUTC .. "generictails/sup-tail-04.ogg",
    pathUTC .. "generictails/sup-tail-05.ogg",
    pathUTC .. "generictails/sup-tail-06.ogg",
    pathUTC .. "generictails/sup-tail-07.ogg",
    pathUTC .. "generictails/sup-tail-08.ogg",
    pathUTC .. "generictails/sup-tail-09.ogg",
    pathUTC .. "generictails/sup-tail-10.ogg"
}
SWEP.DistantShootSoundSilencedIndoor = {
    pathUTC .. "generictails/fire-dist-int-pistol-light-01.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-02.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-03.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-04.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-05.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-06.ogg",
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

local mechh = {
    pathUT .. "mech-01.ogg",
    pathUT .. "mech-02.ogg",
    pathUT .. "mech-03.ogg",
    pathUT .. "mech-04.ogg",
    pathUT .. "mech-05.ogg",
    pathUT .. "mech-06.ogg",
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
    ["idle_empty"] = {
        Source = "idle_empty",
    },
	
    ["ready"] = {
        Source = "ready",
        EventTable = {
            { s = pathM249 .. "start.ogg", t = 0 / 60, c = ca },
            { s = pathM249 .. "chargeback.wav", t = 36 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 56 / 60, c = ca },
            { s = pathM249 .. "end.ogg", t = 78 / 60, c = ca },
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
		IKTimeLine = {
			{ t = 0, lhik = 1 },
		},
    },
    ["holster"] = {
        Source = "holster",
        MinProgress = 0.8,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = UTCrattle, t = 0 / 30, c = ca, v = 0.8 },
        },
		IKTimeLine = {
			{ t = 0, lhik = 1 },
		},
    },

    ["fire"] = {
        Source = {"fire"},
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = mechh, t = 0 },
        },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload_100",
        MinProgress = 0.9,
		PeekProgress = 0.865,
		RefillProgress = 0.65,
		FireASAP = true,
        Mult = 0.75,
        EventTable = {
            { s = pathM249 .. "start.ogg", t = 0 / 60, c = ca },
            { s = pathM249 .. "opentop.ogg", t = 20 / 60, c = ca },
            { s = pathM249 .. "beltout.ogg", t = 62 / 60, c = ca },
            { s = pathM249 .. "magout.ogg", t = 68 / 60, c = ca },
            { s = pathM249 .. "magin.ogg", t = 143 / 60, c = ca },
            { s = pathM249 .. "beltin.ogg", t = 165 / 60, c = ca },
            { s = pathM249 .. "closetop.ogg", t = 230 / 60, c = ca },
            { s = pathM249 .. "end.ogg", t = 257 / 60, c = ca },
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
		RefillProgress = 0.65,
		FireASAP = true,
        Mult = 0.75,
        EventTable = {
            { s = pathM249 .. "start.ogg", t = 0 / 60, c = ca },
            { s = pathM249 .. "chargeback.wav", t = 36 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 56 / 60, c = ca },
            { s = pathM249 .. "opentop.ogg", t = 80 / 60, c = ca },
            { s = pathM249 .. "magout.ogg", t = 117 / 60, c = ca },
            --{ s = pathM249 .. "drop.ogg", t = 176 / 60, c = ca },
            { s = pathM249 .. "magin.ogg", t = 193 / 60, c = ca },
            { s = pathM249 .. "beltin.ogg", t = 215 / 60, c = ca },
            { s = pathM249 .. "closetop.ogg", t = 278 / 60, c = ca },
            { s = pathM249 .. "end.ogg", t = 303 / 60, c = ca },
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
		RefillProgress = 0.6,
		FireASAP = true,
        Mult = 0.75,
        EventTable = {
            { s = pathM249 .. "start.ogg", t = 0 / 60, c = ca },
            { s = pathM249 .. "opentop.ogg", t = 20 / 60, c = ca },
            { s = pathM249 .. "beltout.ogg", t = 62 / 60, c = ca },
            { s = pathM249 .. "magout.ogg", t = 68 / 60, c = ca },
            { s = pathM249 .. "magin.ogg", t = 143 / 60, c = ca },
            { s = pathM249 .. "beltin.ogg", t = 165 / 60, c = ca },
            { s = pathM249 .. "closetop.ogg", t = 230 / 60, c = ca },
            { s = pathM249 .. "end.ogg", t = 257 / 60, c = ca },
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
		RefillProgress = 0.7,
		FireASAP = true,
        Mult = 0.75,
        EventTable = {
            { s = pathM249 .. "start.ogg", t = 0 / 60, c = ca },
            { s = pathM249 .. "chargeback.wav", t = 36 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 55 / 60, c = ca },
            { s = pathM249 .. "opentop.ogg", t = 80 / 60, c = ca },
            { s = pathM249 .. "magout.ogg", t = 117 / 60, c = ca },
            --{ s = pathM249 .. "drop.ogg", t = 176 / 60, c = ca },
            { s = pathM249 .. "magin.ogg", t = 193 / 60, c = ca },
            { s = pathM249 .. "beltin.ogg", t = 215 / 60, c = ca },
            { s = pathM249 .. "closetop.ogg", t = 278 / 60, c = ca },
            { s = pathM249 .. "end.ogg", t = 303 / 60, c = ca },
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
		FireASAP = true,
        Mult = 0.825,
        EventTable = {
            { s = pathM249 .. "start.ogg", t = 0 / 60, c = ca },
            { s = pathM249 .. "30magout.ogg", t = 2 / 60, c = ca },
            { s = pathM249 .. "30magin.ogg", t = 59 / 60, c = ca },
            { s = pathM249 .. "end.ogg", t = 92 / 60, c = ca },
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
		RefillProgress = 0.7,
		FireASAP = true,
        Mult = 0.825,
        EventTable = {
            { s = pathM249 .. "start.ogg", t = 0 / 60, c = ca },
            { s = pathM249 .. "30magout.ogg", t = 2 / 60, c = ca },
            --{ s = pathDist .. "lowpolyhk416_drop.ogg", t = 110 / 60, c = ca },
            { s = pathM249 .. "30emptymagin.ogg", t = 60 / 60, c = ca },
            { s = pathM249 .. "chargeback.wav", t = 120 / 60, c = ca },
            { s = pathM249 .. "chargeforward.wav", t = 140 / 60, c = ca },
            { s = pathM249 .. "end.ogg", t = 151 / 60, c = ca },
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
        Source = {"inspect_762"},
        EventTable = {
            { s = pathUTC .. "cloth_4.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-03.ogg", t = 5 / 30, c = ca, v = 0.8 },
            { s = pathUT .. "magrelease.ogg", t = 10 / 30, c = ca, v = 0.8 },
            { s = pathUT .. "magout.ogg", t = 12.5 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_2.ogg", t = 44 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 50 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "grab-polymer.ogg", t = 63 / 30, c = ca, v = 1 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 80 / 30, c = ca, v = 0.8 },
            { s = pathUT .. "magin.ogg", t = 115 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    ["inspect_look"] = {
        Source = {"inspect0"},
        EventTable = {
            { s = pathUTC .. "cloth_4.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-03.ogg", t = 5 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "cloth_2.ogg", t = 56 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-04.ogg", t = 62 / 30, c = ca, v = 0.8 },
            { s = pathUTC .. "movement-rifle-02.ogg", t = 110 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
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
        Source = "firemode_0",
        EventTable = {
            { s = "uplp_urban_temp/ar15/selector-06.ogg", t = 0.2 },
        }
    },
    ["firemode_2"] = {
        Source = "firemode_1",
        EventTable = {
            { s = "uplp_urban_temp/ar15/selector-01.ogg", t = 0.2 },
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
    if anim == "inspect" or anim == "inspect_empty" then
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
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_small", "uplp_optic_mid"},
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
        PrintName = "Heatshield",
        Category = {"uplp_handguard_m249"},
        Bone = "body",
        Pos = Vector(0, -4, 8.5),
        Ang = Angle(90, 90, 180),
        Icon_Offset = Vector(-6.5, 0, -0.5),
		ExcludeElements = {"uplp_m249_brl_para", "uplp_m249_brl_commando"},
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
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_bipod"),
        Category = {"uplp_bipod_m249"},
        DefaultIcon = Material(defatt .. "bipod.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(-0.3, -5.5, 7.643),
        Icon_Offset = Vector(0, -0.3, -5),
        Ang = Angle(90, 90, 180),
		Installed = "uplp_m249_bipod",
    },



    -- Cosmetic shit
    {
        PrintName = ARC9:GetPhrase("uplp_category_charm"),
        Category = "charm",
        Bone = "body",
        Pos = Vector(0.78, -1.8, 7),
        Ang = Angle(90, 0, -90),
    },


    --{
        --PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " A",
        --StickerModel = "models/weapons/arc9/uplp/stickers/ak_1.mdl",
        --Category = "stickers",
        --Bone = "body",
        --Pos = Vector(0, 1.8 + 1.5, 5.75),
        --Ang = Angle(90, 90, 180),
    --},

}

SWEP.HookP_NameChange = function(self, name)
    local att = self:GetElements()

    defname = "SAW-46"

    cal = "SAW-46"

    name = "SAW-46"

    names = "SAW-46"

    return names
end
