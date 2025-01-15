AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 1 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = ARC9:GetPhrase("uplp_speedonerd_weapon_629")
SWEP.Description = ARC9:GetPhrase("uplp_speedonerd_weapon_629_desc")
SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_pistol") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_pistol") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = ARC9:GetPhrase("uplp_speedonerd_weapon_629_real"),

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase("uplp_speedonerd_weapon_629_manufacturer"),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase("uplp_speedonerd_caliber_44mag"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = "Double Action",
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_usa" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1978" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "speedonerd",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "Kaan, TastyTony",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Urban Coalition",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "rzen1th",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "speedonerd",
}
SWEP.StandardPresets = {
"[Ranger's Friend]XQAAAQCiAAAAAAAAAAA9iIIiM7tuo1AtUBf3wUZrgpRXm4Oq12NPwGc4y8fR9Bv0KK2IXv7s96vYouDGoM4PRjVGGtot1YjJ1aoE5wDBa9vffhVG5eEM05YxAZarueVnUjsvmx2SPJhI00syQYgA",
"[629PD]XQAAAQCKAAAAAAAAAAA9iIIiM7tupQCpjtobRJEkdZ1fP0HAsr6RlAT6/QWdBdH8vRHAEtTT0QDehhNXJlNKdCM6qoRie/Fry8GblYMr+haWx4cShSjY6rPz9r376n2jG9QU"
}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_50ae.mdl"
SWEP.ShellScale = 1.65
SWEP.ShellPitch = 90
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/uplp_unofficial/sw629.mdl"
SWEP.WorldModel = "models/weapons/arc9/uplp_unofficial/w_sw629.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.TPIKParentToSpine4 = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_deagle.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-6.3, 3.5, -6),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(-16, 3, -1),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.ViewModelFOVBase = 75

SWEP.BobSettingsMove =  {0.85, -0.45, 0.5,    0.9, -1.5, 1.15}
SWEP.BobSettingsSpeed = {0.9, 1, 0.92,    1, 0.92, 0.8}

SWEP.ActivePos = Vector(-0.1, -0.2, -0.1)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.NonTPIKAnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

---- Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 50
SWEP.DamageMin = 35
SWEP.DamageType = DMG_BULLET

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
}


SWEP.Penetration = 50 -- Units of wood that can be penetrated
SWEP.ImpactForce = 15 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 8 / ARC9.HUToM
SWEP.RangeMax = 48 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 410 * 39.37
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 0
SWEP.ClipSize = 6

-- Recoil
SWEP.Recoil = 4.5
SWEP.RecoilUp = 1.1
SWEP.RecoilSide = 0.4

SWEP.RecoilRandomUp = 0.45
SWEP.RecoilRandomSide = 0.25

SWEP.RecoilRise = 10
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.75

SWEP.RecoilMultSights = 0.95
SWEP.RecoilMultCrouch = 0.75

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = -0.15 -- Vertical tilt
SWEP.VisualRecoilSide = 0 -- Horizontal tilt
SWEP.VisualRecoilRoll = 30 -- Roll tilt
SWEP.VisualRecoilPunch = 10 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 50
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .25

SWEP.VisualRecoilMultHipFire = 1
-- SWEP.VisualRecoilUpHipFire = 2
-- SWEP.VisualRecoilSideHipFire = -0.1
-- SWEP.VisualRecoilRollHipFire = 20
-- SWEP.VisualRecoilPunchHipFire = 2
-- SWEP.VisualRecoilDampingConstHipFire = 45
-- SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0.005
SWEP.SpreadAddHipFire = 0.015

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadAddMove = 0.015
SWEP.SpreadAddMidAir = 0.05

SWEP.SpreadMultSights = 0.5
SWEP.SpreadMultMove = 0.9

SWEP.RecoilDissipationRate = 3
SWEP.RecoilResetTime = 0.01
SWEP.RecoilPerShot = 1 / 3
SWEP.RecoilModifierCap = 1
SWEP.RecoilMax = 1

-- Weapon handling
SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.85 -- When aiming

SWEP.BarrelLength = 20

SWEP.AimDownSightsTime = 0.3 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.25 -- Time it takes to fully enter sprint

-- Shooting and Firemodes
SWEP.RPM = 120 -- How fast gun shoot

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { 
	Mode = 1,
	PrintName = "DACT",	
	},	
}

SWEP.TriggerDelay = false -- fun allowed
SWEP.TriggerDelayTime = 0.04

SWEP.ShootPitch = 90
SWEP.ShootVolume = 120

-- HoldType Info
SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "pistol"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeNPC = "revolver"

-- NPC Info
SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 60

-- Iron Sight and Sight Info
SWEP.IronSights = {
     Pos = Vector(-2.695, -1, 0.85),
     Ang = Angle(0.05, 0, 0.2),
     Magnification = 1,
     ViewModelFOV = 70,
}

SWEP.PeekPos = Vector(-1, 2, -3)
SWEP.PeekAng = Angle(-0.3, 0.1, -40)

SWEP.PeekPosReloading = Vector(0.5, 0, -1)
SWEP.PeekAngReloading = Angle(0, 0.4, -5)

-- Customization Menu Info
SWEP.CustomizePos = Vector(15, 30, 2.5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(15, -1.93, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)
SWEP.CustomizeSnapshotFOV = 70

-- Dropped Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

---- Sounds

-- urbna!
local pathUT = "uplp_urban_temp/volver/"
local pathUTC = "uplp_urban_temp/common/"


SWEP.ShootSound = {
    pathUT .. "fire-01.ogg",
    pathUT .. "fire-02.ogg",
    pathUT .. "fire-03.ogg",
    pathUT .. "fire-04.ogg",
    pathUT .. "fire-05.ogg",
    pathUT .. "fire-06.ogg",
}

SWEP.DistantShootSound = {
    pathUT .. "tails/fire-dist-44mag-pistol-ext-01.ogg",
    pathUT .. "tails/fire-dist-44mag-pistol-ext-02.ogg",
    pathUT .. "tails/fire-dist-44mag-pistol-ext-03.ogg",
    pathUT .. "tails/fire-dist-44mag-pistol-ext-04.ogg",
    pathUT .. "tails/fire-dist-44mag-pistol-ext-05.ogg",
    pathUT .. "tails/fire-dist-44mag-pistol-ext-06.ogg"
}

SWEP.DistantShootSoundIndoor = {
	pathUT .. "tails/fire-dist-int-shotgun-01.ogg",
    pathUT .. "tails/fire-dist-int-shotgun-02.ogg",
    pathUT .. "tails/fire-dist-int-shotgun-03.ogg",
    pathUT .. "tails/fire-dist-int-shotgun-04.ogg",
    pathUT .. "tails/fire-dist-int-shotgun-05.ogg",
    pathUT .. "tails/fire-dist-int-shotgun-06.ogg"
}

local mech = {
    pathUT .. "resettrigger.ogg",
}

---- Animations
-- HideBones, BulletBones, etc.
SWEP.BulletBodygroups = {
    [1] = {3, 6},
    [2] = {3, 5},
    [3] = {3, 4},
    [4] = {3, 3},
    [5] = {3, 2},
    [6] = {3, 1},
	[7] = {3, 0}
}

SWEP.DefaultBodygroups = "0000"

SWEP.HideBones = {
    "speedreloader",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "speedreloader",
    },
}

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
		Time = 1,
        EventTable = {
            {hide = 1, t = 0},
        },
        -- Time = 0.1,
    },
    ["ready"] = {
        Source = "ready",
        Mult = 1.1,
        EventTable = {
            { s = pathUT .. "draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
            { s = pathUT .. "cylinder_in.ogg", t = 5 / 60, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.65,
		FireASAP = true,
        EventTable = {
            { s = pathUT .. "draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["holster"] = {
        Source = "holster",
        MinProgress = 0.5,
        EventTable = {
            { s = pathUTC .. "rattle2.ogg", t = 0 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["fire"] = {
        Source = "fire",
        -- Time = 1,
        --ShellEjectAt = 0.01,
        EventTable = { { s = mech, t = 0, v = 0.6 } },
    },
	
    ["dryfire"] = {
        Source = "dryfire",
        -- Time = 1,
        --ShellEjectAt = 0.01,
        EventTable = { { s = pathUT .. "drophammer.ogg", t = 1 / 60, v = 0.6 } },
        EventTable = { { s = mech, t = 5 / 60, v = 0.6 } },
    },
	
    ["trigger"] = {
        Source = "trigger",
        Time = 0.05,
        --ShellEjectAt = 0.01,
        EventTable = { { s = mech, t = 1 / 60, v = 0.6 } },
    },
	
	["untrigger"] = {
        Source = "untrigger",
        Time = 0.05,
        --ShellEjectAt = 0.01,
        EventTable = { { s = mech, t = 1 / 60, v = 0.6 } },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        MinProgress = 0.9,
		PeekProgress = 0.85,
		Time = 2.5,
		RefillProgress = 0.75,
		FireASAP = true,
        EventTable = {
            { s = pathUT .. "rattle.ogg", t = 0 / 60, c = ca },
            { s = pathUT .. "cylinder_out.ogg", t = 15 / 60, c = ca },
            { s = pathUT .. "extractor1.ogg", t = 26 / 60, c = ca },
            { s = pathUT .. "extractor2.ogg", t = 28 / 60, c = ca },
            { s = pathUT .. "cylinder_extract.ogg", t = 35 / 60, c = ca },
            { s = pathUT .. "speedloader.ogg", t = 91 / 60, c = ca },
            { s = pathUT .. "cylinder_in.ogg", t = 112 / 60, c = ca },
            {hide = 1, t = 0},
            {hide = 0, t = 0.2},
            {hide = 2, t = 1.44}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    -- Inspecc --

    ["inspect"] = {
        Source = "inspect",
		Time = 4.4,
        EventTable = {
            { s = pathUTC .. "cloth_2.ogg", t = 5 / 30, c = ca },
            { s = pathUTC .. "movement-pistol-02.ogg", t = 52 / 30, c = ca },
            { s = pathUTC .. "cloth_4.ogg", t = 56 / 30, c = ca, v = 0.5 },
            { s = pathUTC .. "cloth_1.ogg", t = 92 / 30, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
}

---- Attachments
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model
    if eles["uplp_sw_barrel_long"] then
        if eles["uplp_optic_small"] or eles["uplp_optic_mid"] then
            mdl:SetBodygroup(4,1)
        else
			mdl:SetBodygroup(4,0)
		end
	else
		mdl:SetBodygroup(4,0)
    end
end

SWEP.AttachmentElements = {

    ["uplp_sw_grip_big"] = { Bodygroups = { { 2, 1 } } },

    ["uplp_sw_barrel_long"] = { Bodygroups = { { 1, 1 } }, AttPosMods = {
		    [1] = { Pos = Vector(6, -3.9, 0), },
		    [5] = { Pos = Vector(13, -3, -0.4), },
		},
	},
	
	["uplp_sw_barrel_short"] = { Bodygroups = { { 1, 2 } }, AttPosMods = {
		    --[4] = { Pos = Vector(7, -2.1, 0), },
		    [5] = { Pos = Vector(7, -2.9, -0.45), },
		},
	},

}

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_small", "uplp_optic_mid"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "body",
        ExcludeElements = {"nooptic"},
        Pos = Vector(5.5, -3.6, 0),
        ExtraSightDistance = 2,
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_sw_barrel"},
        DefaultIcon = Material(defatt2 .. "629br.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(7, -2.8, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        Category = {"uplp_sw_grip"},
        DefaultIcon = Material(defatt2 .. "argrip.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(-0.8, 0.25, 0),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        Category = {"uplp_tac_pistol"},
        ExcludeElements = {"notac"},
        Bone = "body",
        Pos = Vector(5.6, -2.1, 0),
        Ang = Angle(0, 0, 90),
		Scale = 0.85
    },



    -- Cosmetic shit
    {
        PrintName = ARC9:GetPhrase("uplp_category_charm"),
        Category = "charm",
        Bone = "body",
        Pos = Vector(10, -3, -0.45),
        Ang = Angle(0, 0, -90),
    },

    -- here to not make presets bad
    {
        PrintName = ARC9:GetPhrase("uplp_category_ubgl") or "ubgl",
        Category = {"uplp_m203_rail"},
        -- DefaultIcon = Material(defatt2 .. "grip.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, 0.4, 6.87),
        Ang = Angle(90, 90, 0),
        -- ExcludeElements = {"uplp_no_grip", "uplp_no_ubgl"},
        MergeSlots = {7}, 
        Hidden = true,
    },
}

SWEP.HookP_NameChange = function(self, name)
    local att = self:GetElements()

    if att["uplp_sw_barrel_short"] and att["uplp_sw_grip_big"] then
        name = "629PD"
    end

    return name
end
