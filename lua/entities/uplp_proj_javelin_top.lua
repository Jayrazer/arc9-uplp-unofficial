AddCSLuaFile()

ENT.Base                     = "arc9_uplp_proj_base"
ENT.PrintName                = "Javelin Missile (Top Attack)"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/arc9/panzerfaust_warhead_proj.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.GunshipWorkaround = false

ENT.Delay = 0
ENT.SafetyFuse = 0.5
ENT.ImpactDamage = 150
ENT.RocketLifetime = 10

ENT.TopAttack = true
ENT.TopAttackHeight = 1000

ENT.SteerSpeed = 30
ENT.SeekerAngle = 180
ENT.SeekerExplodeRange = 0
ENT.SeekerExplodeSnapPosition = false
ENT.SeekerExplodeAngle = 90

ENT.LeadTarget = true
ENT.SuperSteerTime = 1
ENT.SuperSteerSpeed = 800

ENT.MaxSpeed = 2000
ENT.Acceleration = 4000

ENT.SteerDelay = 0.5
ENT.AccelerationDelay = 0.5
ENT.FlareRedirectChance = 0.5

ENT.AudioLoop = "uplp/javelin/weap_juliet_proj_lp_01.wav"

ENT.SmokeTrail = true

ENT.FlareColor = Color(255, 255, 255)

DEFINE_BASECLASS(ENT.Base)

local path = "uplp_urban_temp/m203/"
ENT.ExplosionSounds = {path .. "explosion-close-01.ogg", path .. "explosion-close-02.ogg", path .. "explosion-close-03.ogg", path .. "explosion-close-04.ogg", path .. "explosion-close-05.ogg", path .. "explosion-close-06.ogg"}
ENT.DebrisSounds = {path .. "debris-01.ogg", path .. "debris-02.ogg", path .. "debris-03.ogg", path .. "debris-04.ogg", path .. "debris-05.ogg"}

function ENT:Detonate(ent)
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos()

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(dir * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(500)
    util.BlastDamageInfo(dmg, IsValid(ent) and ent:GetPos() or self:GetPos(), 256)
    self:ImpactTraceAttack(ent, 900, 50000, src)

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