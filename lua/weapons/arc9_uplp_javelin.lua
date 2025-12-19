AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 4 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "Lancer IPAT" --ARC9:GetPhrase("uplp_javelin")
SWEP.Description = ARC9:GetPhrase("uplp_speedonerd_weapon_panzerfaust3_desc")
SWEP.Class = "Rocket Launcher"
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_utils") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = ARC9:GetPhrase("uplp_speedonerd_weapon_panzerfaust3_real"),

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase("uplp_speedonerd_weapon_panzerfaust3_manufacturer"),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase("uplp_speedonerd_caliber_60mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = ARC9:GetPhrase("uplp_speedonerd_mechanism_rocket"),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_germany" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1987" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "speedonerd",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "TastyTony",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Dummified",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "Treyarch",
}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_m79"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_762.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellPitch = 90
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_javelin.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_panzerfaust.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
--SWEP.WorldModelMirror = "models/weapons/arc9/uplp_unofficial/panzerfaust.mdl"
SWEP.WorldModelOffset = {
    Pos        =    Vector(-8.8, 5.5, -6.5),
    Ang        =    Angle(-8, -3, 175),
    Bone    =    "ValveBiped.Bip01_R_Hand",
    Scale = 0.9,
}

SWEP.DefaultBodygroups = "00000000000000"

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.PeekPos = Vector(3, 2, -1)
SWEP.PeekAng = Angle(0, 3, 0)

SWEP.RestPos = Vector(0, -1, -1)
SWEP.RestAng = Angle(0, -20, 0)

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_RPG


-- If we arent aiming, dont fire
SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1
end

SWEP.DamageMax = 34
SWEP.DamageMin = 18
SWEP.HeadshotDamage = 1
SWEP.DamageType = DMG_BULLET
SWEP.DamageType = nil
SWEP.ShootEnt = "uplp_proj_panzerfaust" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 1800
SWEP.ShootEntityData = {}

SWEP.Penetration = 18
SWEP.ImpactForce = 4

-- Range
SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 90 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 715 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5
SWEP.AlwaysPhysBullet = true

-- Magazine Info
SWEP.Ammo = "RPG_round" -- What ammo type this gun uses.

SWEP.ChamberSize = 0
SWEP.ClipSize = 1

-- Recoil
SWEP.Recoil = 0.05
SWEP.RecoilUp = 0.05
SWEP.RecoilSide = 0.05

SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.25

SWEP.RecoilMultSights = 1
SWEP.RecoilMultCrouch = 0.75

-- Visual Recoil
SWEP.VisualRecoil = 0
SWEP.VisualRecoilMultSights = 1
-- SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = 0 -- Vertical tilt
SWEP.VisualRecoilSide = -0 -- Horizontal tilt
SWEP.VisualRecoilRoll = 0 -- Roll tilt
SWEP.VisualRecoilPunch = 0 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0
SWEP.VisualRecoilPositionBumpUp = 0

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 2
SWEP.VisualRecoilSideHipFire = -0.2
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.5
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0
SWEP.SpreadAddRecoil = 0

SWEP.SpreadMultSights = 0
SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0
SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddShooting = 0

SWEP.RecoilPatternDrift = 20

SWEP.RecoilDissipationRate = 5
SWEP.RecoilResetTime = 0.02
SWEP.RecoilPerShot = 1 / 9
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1

-- Weapon handling
SWEP.Speed = 0.7 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.45 / 0.85 -- When aiming
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.75 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.75 -- Time it takes to fully enter sprint

SWEP.SwayAddSights = 1.25
SWEP.BarrelLength = 60

-- Shooting and Firemodes
SWEP.RPM = 600 -- How fast gun shoot
SWEP.HeatCapacity = 120 * 1.5 -- For suppresors; how many shots for full heat With big silencer (Small silencers will make this number lower down to 70%)

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "SINGLE"
    },
}

SWEP.ShootPitch = 90
SWEP.ShootVolume = 120

-- HoldType Info
SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "passive"
SWEP.HoldTypeNPC = nil

-- NPC Info
SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 100

-- Iron Sight and Sight Info
SWEP.IronSights = {
	Pos = Vector(-4.95, 19.5, -2.42),
	Ang = Angle(0, 0, 0),
    Magnification = 1.25,
    ViewModelFOV = 60,
    CrosshairInSights = true,
}

SWEP.ReloadInSights = false

-- Customization Menu Info
SWEP.CustomizePos = Vector(11, 40, 5)
SWEP.CustomizeAng = Angle(85, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(0, 10, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeSnapshotFOV = 90

-- Dropped Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/panzerfaust.mdl"
-- SWEP.DropMagazineTime = 0.7
-- SWEP.DropMagazineQCA = 2
-- SWEP.DropMagazinePos = Vector(30, 0, -20)
-- SWEP.DropMagazineAng = Angle(90, 95, 90)
-- SWEP.DropMagazineVelocity = Vector(70, 20, 0)

---- Sounds
-- urbna!
local pathPanzer = "uplp/panzerfaust/"
local pathJavelin = "uplp/javelin/"
local pathUT = "uplp_urban_temp/ak/"
local pathUTC = "uplp_urban_temp/common/"

SWEP.ShootSound = "^" .. pathJavelin .. "weap_juliet_launch_01.wav"
-- {
	-- "^arc9_uplp/panzerfaust/fire_1.wav",
	-- "^arc9_uplp/panzerfaust/fire_2.wav",
	-- "^arc9_uplp/panzerfaust/fire_3.wav",
-- }
SWEP.ShootSoundIndoor = SWEP.ShootSound
SWEP.ShootSoundSilenced = ""
SWEP.ShootSoundSilencedIndoor = SWEP.ShootSoundSilenced

-- SWEP.DropMagazineSounds = {
    -- pathPanzer .. "tube_hit_ground.wav",
-- }

SWEP.BulletBones = {
    [1] = "pzf3_tube",
}

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 35 / 35,
		MinProgress = 1,
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.7,
        EventTable = {
            {s = pathPanzer .. "draw.wav", t = 1 / 30},
        },
    },
    ["holster"] = {
        Source = "holster",
		MinProgress = 0.9,
        EventTable = {
            {s = pathPanzer .. "reload_start.wav", t = 2 / 30},
        },
    },
    ["fire"] = {
        Source = "fire",
		MinProgress = 0.9,
        Time = 13 / 30,
        EventTable = {
			{s = pathJavelin .. "weap_juliet_proj_ignite_01.ogg", t = 3 / 30},
        },
    },
    ["reload"] = {
        Source = "reload",
        Time = 100 / 30,
        MinProgress = 1,
		RefillProgress = 0.7,
		MagSwapTime = 1.3,
		FireASAP = true,
        EventTable = {
            {s = pathJavelin .. "wfoly_la_juliet_reload_start.ogg", t = 1 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_raise_up.ogg", t = 12 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_reload_rocketin_01.ogg", t = 30 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_reload_end.ogg", t = 55 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_raise_settle.ogg", t = 80 / 30},
        },
    },
    ["inspect"] = {
        Source = "inspect",
        FireASAP = true,
		Time = 150 / 30,
        MinProgress = 0.925,
        EventTable = {
		    {s = pathPanzer .. "inspect_start.wav", t = 0 / 30},
		    {s = pathPanzer .. "inspect_mid.wav", t = 50 / 30},
		    {s = pathPanzer .. "rotate.wav", t = 62 / 30},
            {s = pathPanzer .. "reload_mid.wav", t = 102 / 30},
        },
    },
}

---- Attachments
SWEP.AttachmentElements = {}

-- SWEP.Hook_ModifyBodygroups = function(self, data)
    -- local vm = data.model
    -- local attached = data.elements

    -- if self:Clip1() == 0 then vm:SetBodygroup(1,2) end
	
	-- if attached["uplp_ammo_bunkerbuster"] and self:Clip1() == 1 then vm:SetBodygroup(1,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Bone = "pzf3_root",
        Pos = Vector(9.05, -4.5, 0.075),
        Ang = Angle(0, 0, -92),
		Integral = "uplp_optic_panzerfaust",
		Hidden = true,
        Category = {"uplp_optic_panzerfaust"},
		CorrectivePos = Vector(0,0,0),
		CorrectiveAng = Angle(26, 18, -1)
    },

    {
        PrintName = "Ammo",
        Bone = "pzf3_root",
        Pos = Vector(0, -4.5, 15),
        Ang = Angle(0, 0, 0),
		Hidden = true,
        Category = {"uplp_panzer_ammo"},
    },
	
	{
        PrintName = ARC9:GetPhrase("uplp_category_charm"),
        Category = "charm",
        Bone = "pzf3_root",
        Pos = Vector(4.55, -6.45, 3),
        Ang = Angle(90, 0, -90),
    },
	{
        PrintName = ARC9:GetPhrase("uplp_category_sticker"),
        StickerModel = "models/weapons/arc9/uplp/stickers/uplp_panzerfaust_sticker.mdl",
        Category = "stickers",
        Bone = "pzf3_root",
        Pos = Vector(5, -6.25, -1),
        Ang = Angle(90, 90, 180),
    },    
}