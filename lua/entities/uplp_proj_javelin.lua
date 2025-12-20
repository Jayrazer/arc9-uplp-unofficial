AddCSLuaFile()

ENT.Base                     = "arc9_uplp_proj_base"
ENT.PrintName                = "Javelin Missile (F&F)"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/arc9/uplp_javelin_missile_shot.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.GunshipWorkaround = false

ENT.Delay = 0
ENT.SafetyFuse = 0.25
ENT.ImpactDamage = 0
ENT.RocketLifetime = 5

ENT.TopAttack = false
ENT.TopAttackHeight = 1000

ENT.SteerSpeed = 150
ENT.SeekerAngle = 60
ENT.SeekerExplodeRange = 128
ENT.SeekerExplodeSnapPosition = false
ENT.SeekerExplodeAngle = 90

ENT.LeadTarget = true
ENT.SuperSteerTime = 0
ENT.SuperSteerSpeed = 800

ENT.MaxSpeed = 3000
ENT.Acceleration = 3000

ENT.SteerDelay = 0.25
ENT.AccelerationDelay = 0.25
ENT.FlareRedirectChance = 0.75

ENT.AudioLoop = "uplp/javelin/weap_juliet_proj_lp_01.wav"

ENT.SmokeTrail = true

ENT.FlareColor = Color(255, 255, 255)

DEFINE_BASECLASS(ENT.Base)

local path = "uplp_urban_temp/m203/"
ENT.ExplosionSounds = {path .. "explosion-close-01.ogg", path .. "explosion-close-02.ogg", path .. "explosion-close-03.ogg", path .. "explosion-close-04.ogg", path .. "explosion-close-05.ogg", path .. "explosion-close-06.ogg"}
ENT.DebrisSounds = {path .. "debris-01.ogg", path .. "debris-02.ogg", path .. "debris-03.ogg", path .. "debris-04.ogg", path .. "debris-05.ogg"}

function ENT:OnInitialize()
    if SERVER then
        self:GetPhysicsObject():AddVelocity(Vector(0, 0, 150))
    end
end

function ENT:Detonate(ent)
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() + dir

    --local mult = TacRP.ConVars["mult_damage_explosive"]:GetFloat()
    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_BLAST + DMG_AIRBOAT)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(dir * 9000)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(800)
    util.BlastDamageInfo(dmg, self:GetPos(), 256)
    // self:ImpactTraceAttack(ent, 400, 200)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
            local tr = util.TraceLine({
                start = self:GetPos(),
                endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
                filter = self,
            })
            local tr2 = util.TraceLine({
                start = tr.HitPos,
                endpos = self:GetPos(),
                filter = self,
                mask = MASK_WATER
            })
            ParticleEffect("water_explosion", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

            // Overpressure radius
            util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 200)

            self:EmitSound("weapons/underwater_explode3.wav", 100)
        else
            ParticleEffect("explosion_grenade", self:GetPos(), Angle(0, 0, 0), nil)
    end

    self:EmitSound(table.Random(self.ExplosionSounds), 125)

    self:Remove()
end