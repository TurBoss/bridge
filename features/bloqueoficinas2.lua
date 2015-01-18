-----------------------------------------------------------------------------
-- EIStatueCL2
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "bloqueoficinas2",
	blocking			= true,
	category			= "Rocks",
	damage				= 10000,
	description			= "Huge Rock",
	energy				= 0,
	flammable			= 0,
	useFootPrintCollisionVolume = true,
	footprintX			= 17,
	footprintZ			= 28,
	height				= "298",
	hitdensity			= "5",
	metal				= 20,
	indestructible			=true,
	object				= "features/edificios/bloqueoficinas2.dae",
	reclaimable			= false,
	autoreclaimable		= false,
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "false", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})
