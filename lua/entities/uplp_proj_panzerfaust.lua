AddCSLuaFile()

ENT.Base                     = "arc9_uplp_proj_base"
ENT.PrintName                = "Panzerfaust Rocket"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/arc9/panzerfaust_warhead_proj.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.SafetyFuse = 0.075
ENT.ImpactDamage = 150

ENT.AudioLoop = "uplp/panzerfaust/move_rpapa7_proj_flame_cls.ogg"

ENT.SmokeTrail = true

ENT.FlareColor = Color(255, 255, 255)

local path = "uplp_urban_temp/m203/"
ENT.ExplosionSounds = {path .. "explosion-close-01.ogg", path .. "explosion-close-02.ogg", path .. "explosion-close-03.ogg", path .. "explosion-close-04.ogg", path .. "explosion-close-05.ogg", path .. "explosion-close-06.ogg"}
ENT.DebrisSounds = {path .. "debris-01.ogg", path .. "debris-02.ogg", path .. "debris-03.ogg", path .. "debris-04.ogg", path .. "debris-05.ogg"}

function ENT:Detonate(ent)
    local attacker = self.Attacker or self:GetOwner()

    --local mult = TacRP.ConVars["mult_damage_explosive"]:GetFloat() * (self.NPCDamage and 0.25 or 1)
    util.BlastDamage(self, attacker, self:GetPos(), 350, 600)
    self:ImpactTraceAttack(ent, 1000 , 1500)

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

-- function ENT:Detonate()
    -- if not self:IsValid() then return end
    -- if self.Defused then return end
    -- if self:WaterLevel() > 0 then
        -- local tr = util.TraceLine({
            -- start = self:GetPos(),
            -- endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
            -- filter = self,
        -- })
        -- local tr2 = util.TraceLine({
            -- start = tr.HitPos,
            -- endpos = self:GetPos(),
            -- filter = self,
            -- mask = MASK_WATER
        -- })
        -- ParticleEffect("water_explosion", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

        -- // Overpressure radius
        -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 200)

        -- self:EmitSound("weapons/underwater_explode3.wav", 100)
    -- else
        -- ParticleEffect("explosion_grenade", self:GetPos(), Angle(0, 0, 0), nil)

        -- // Overpressure radius
        -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 200)
        -- -- // Shrapnel radius
        -- -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 1024, 100)

        -- self:EmitSound(table.Random(self.ExplosionSounds), 130)
        
        -- if self.GrenadePos == nil then
            -- self.GrenadePos = self:GetPos()
        -- end
        -- if self.GrenadeDir == nil then
            -- self.GrenadeDir = self:GetVelocity():GetNormalized()
        -- end

        -- local trace = util.TraceLine({
            -- start = self.GrenadePos,
            -- endpos = self.GrenadePos + self.GrenadeDir * 4,
            -- mask = MASK_SOLID_BRUSHONLY
        -- })
        -- if trace.Hit then
            -- self:EmitSound(self.DebrisSounds[math.random(1,#self.DebrisSounds)], 85, 100, 1, CHAN_AUTO)
        -- end
    -- end

    -- if SERVER then
        -- local dir = self.HitVelocity or self:GetVelocity()

        -- if self.Boost <= 0 then
            -- dir = Vector(0, 0, -1)
        -- end

        -- self:FireBullets({
            -- Attacker = self,
            -- Damage = 0,
            -- Tracer = 0,
            -- Distance = 256,
            -- Dir = dir,
            -- Src = self:GetPos(),
            -- Callback = function(att, tr, dmg)
                -- if self.Scorch then
                    -- util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
                -- end
            -- end
        -- })
    -- end
    -- self.Defused = true

    -- SafeRemoveEntityDelayed(self, self.SmokeTrailTime)
    -- self:SetRenderMode(RENDERMODE_NONE)
    -- self:SetMoveType(MOVETYPE_NONE)
    -- self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
-- end