-----------------------------------------------------------------------------
-- EIStatueCL2
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "ruinacasa",
	blocking			= true,
	category			= "Rocks",
	damage				= 10000,
	description			= "Huge Rock",
	energy				= 0,
	flammable			= 0,
	footprintX			= 19,
	footprintZ			= 19,
	height				= "298",
	hitdensity			= "5",
	metal				= 20,
	indestructible			=true,
	object				= "features/edificios/ruinacasa.dae",
	reclaimable			= false,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "false", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})

