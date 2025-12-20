AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 4 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = "Lancer IPAT-MS" --ARC9:GetPhrase("uplp_javelin")
SWEP.Description = [[The "Infantry-Portable Anti-Tank Missile System" (IPAT-MS) is a lock-on launcher designed for use by infantry units against ground targets from long distance.]] --ARC9:GetPhrase("uplp_speedonerd_weapon_panzerfaust3_desc")
SWEP.Class = "Missile Launcher"
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_utils") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = "FGM-148 Javelin", --ARC9:GetPhrase("uplp_speedonerd_weapon_panzerfaust3_real"),

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = "Raytheon Technologies", --ARC9:GetPhrase("uplp_speedonerd_weapon_panzerfaust3_manufacturer"),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = "127mm Missile", --ARC9:GetPhrase("uplp_speedonerd_caliber_60mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = ARC9:GetPhrase("uplp_speedonerd_mechanism_rocket"),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_usa" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1996" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "speedonerd",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "GoldbergR",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Dummified, speedonerd",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "Infinity Ward",
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
    Pos        =    Vector(-10, 5.5, -7.5),
    Ang        =    Angle(-15, -5, 216),
    Bone    =    "ValveBiped.Bip01_R_Hand",
    Scale = 0.9,
}

SWEP.CantPeek = true
SWEP.NoAimAssist = true
SWEP.NotForNPCs = true

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


-- lock on stuff stolen from black ops pack
SWEP.NextBeepTime = 0
SWEP.TargetEntity = nil
SWEP.StartTrackTime = 0
SWEP.LockTime = 1

SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1 or not IsValid(self.TargetEntity) or math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 1) < 1
end

SWEP.Hook_GetShootEntData = function(self, data)
    local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 1)

    if tracktime >= 1 and self.TargetEntity and IsValid(self.TargetEntity) then
        data.Target = self.TargetEntity
    end
end

local TrackingIndicator = Material("vgui/uplp_reticles/halo_cross.png")
SWEP.Hook_HUDPaintBackground = function(self)
    if self:GetSightAmount() >= 1 then
        if self.TargetEntity and IsValid(self.TargetEntity) and self:Clip1() > 0 then
             local toscreen = self.TargetEntity:WorldSpaceCenter():ToScreen()
             local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)

             if tracktime >= 1 then
                surface.SetDrawColor(255,0,0,200)
                surface.DrawLine(0, toscreen.y, ScrW(), toscreen.y)
                surface.DrawLine(toscreen.x, 0, toscreen.x, ScrH())
             else
                surface.SetMaterial(TrackingIndicator)
                surface.SetDrawColor(255,0,0,200)
                surface.DrawTexturedRect(toscreen.x - 90, toscreen.y - 90, 180, 180)
             end
        end
    end
end

SWEP.Hook_Think = function(self)
    if self:GetSightAmount() >= 1 and self:Clip1() > 0 then

        if self.NextBeepTime > CurTime() then return end

        local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 1)

        -- if CLIENT then
        if tracktime >= 1 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("uplp/javelin/weap_juliet_ui_reticle_locked.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.25
        else
            if CLIENT then
                self:EmitSound("uplp/javelin/weap_juliet_ui_reticle_tracking.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 1
        end
        -- end

        --local targets = ents.GetAll()
        local targets = ents.FindInCone(self:GetShootPos() + (self:GetShootDir():Forward() * 32), self:GetShootDir():Forward(), 50000, math.cos(math.rad(15)))

        local best = nil
        -- local bestang = -1000
        local targetscore = 0

        for _, ent in ipairs(targets) do
            local class = ent:GetClass()
            -- if ent:Health() <= 0 then continue end
            -- if !(ent:IsPlayer() or ent:IsNPC() or ent:GetOwner():IsValid()) then continue end
            if ent:IsWorld() or class == "prop_dynamic" or string.Left(class, 7) == "trigger" then continue end
            if ent == self:GetOwner() then continue end
            if ent.IsProjectile then continue end
            if ent.UnTrackable then continue end
            local dot = (ent:GetPos() - self:GetShootPos()):GetNormalized():Dot(self:GetShootDir():Forward())

            local aa, bb = ent:GetRotatedAABB(ent:OBBMins(), ent:OBBMaxs())
            local vol = math.abs(bb.x - aa.x) * math.abs(bb.y - aa.y) * math.abs(bb.z - aa.z)
            if vol <= 62000 then continue end -- about enough to filter humanoids

            local entscore = 1
            if ent:IsPlayer() then entscore = entscore + 5 end
            if ent:IsNPC() or ent:IsNextBot() then entscore = entscore + 2 end
            if ent:IsVehicle() or ent.LVS then entscore = entscore + 10 end
            if ent:Health() > 0 then entscore = entscore + 5 end

            entscore = entscore + dot * 5

            entscore = entscore + (ent.ARC9TrackingScore or 0)

            if entscore > targetscore then
                local tr = util.TraceLine({
                    start = self:GetShootPos(),
                    endpos = ent:WorldSpaceCenter(),
                    filter = {self:GetOwner(), ent},
                    mask = MASK_OPAQUE
                })
                if tr.Fraction == 1 then
                    best = ent
                    bestang = dot
                    targetscore = entscore
                end
            end
        end

        if !best then self.TargetEntity = nil return end

        if !self.TargetEntity then
            self.StartTrackTime = CurTime()
        end

        self.TargetEntity = best

        --[[]
        local aa, bb = best:WorldSpaceAABB()
        local vol = math.abs(bb.x - aa.x) * math.abs(bb.y - aa.y) * math.abs(bb.z - aa.z)
        -- local dimx = (bb.x - aa.x) / 2
        -- local dimy = (bb.y - aa.y) / 2
        -- local dimz = (bb.z - aa.z) / 2

        clutter = math.max(1000 - (vol / 1000), 128)

        -- local dimx = clutter / 50
        -- local dimy = clutter / 50
        -- local dimz = clutter / 100

        local tr2 = util.TraceLine({
            start = self:GetShootPos(),
            endpos = best:GetPos() + (self:GetShootDir():Forward() * clutter),
            filter = self:GetOwner(),
            mask = MASK_NPCWORLDSTATIC,
            -- maxs = Vector(-dimx, -dimy, -dimz),
            -- mins = Vector(dimx, dimy, dimz),
        })

        local tr3 = util.TraceLine({
            start = self:GetShootPos(),
            endpos = best:GetPos() + Vector(0, 0, -clutter),
            filter = self:GetOwner(),
            mask = MASK_NPCWORLDSTATIC,
            -- maxs = Vector(-dimx, -dimy, -dimz),
            -- mins = Vector(dimx, dimy, dimz),
        })

        -- -- Too much ground clutter
        if tr2.Hit and !tr2.HitSky then return end
        if tr3.Hit and !tr3.HitSky then return end

        if !self.TargetEntity then
            self.StartTrackTime = CurTime()
        end

        self.TargetEntity = best
        ]]
    else
        self.TargetEntity = nil
    end
end

------

SWEP.ShootEnt = "uplp_proj_javelin" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 500
SWEP.ShootEntityData = {}

SWEP.Penetration = 18
SWEP.ImpactForce = 4

-- Range
SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 90 / ARC9.HUToM

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
        PrintName = "F&F",
        ShootEnt = "uplp_proj_javelin",
    },
    {
        Mode = -1,
        PrintName = "TOP",
        ShootEnt = "uplp_proj_javelin_top",
    },
}


SWEP.ShootPitch = 90
SWEP.ShootVolume = 120

-- HoldType Info
SWEP.HoldType = "camera"
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
            {s = pathJavelin .. "wfoly_la_juliet_raise_up.ogg", t = 1 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_raise_settle.ogg", t = 14 / 30},
        },
    },
    ["holster"] = {
        Source = "holster",
        MinProgress = 0.9,
        EventTable = {
            {s = pathJavelin .. "wfoly_la_juliet_raise_up.ogg", t = 2 / 30},
        },
    },
    ["fire"] = {
        Source = "fire",
        MinProgress = 1,
        Time = 13 / 30,
        EventTable = {
            {s = pathJavelin .. "weap_juliet_proj_ignite_01.ogg", t = 2 / 30, v = 40},
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
            {s = pathJavelin .. "wfoly_la_juliet_raise_up.ogg", t = 0 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_raise_settle.ogg", t = 12 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_reload_start.ogg", t = 56 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_raise_up.ogg", t = 104 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_reload_start.ogg", t = 112 / 30},
            {s = pathJavelin .. "wfoly_la_juliet_raise_settle.ogg", t = 128 / 30},
        },
    },
}

---- Attachments
SWEP.AttachmentElements = {}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Bone = "pzf3_root",
        Pos = Vector(9.05, -4.5, 0.075),
        Ang = Angle(0, 0, -92),
        Integral = "uplp_optic_javelin",
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
        Pos = Vector(4.95, -7.5, -7.25),
        Ang = Angle(0, 0, -90),
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