-----------------------------------------------------------------------------
-- EIStatueCL2
-----------------------------------------------------------------------------
local featureDef	=	{
	buildPic = "placeholder",
	name				= "helipuerto1",
	blocking			= true,
	category			= "Rocks",
	damage				= 10000,
	description			= "Huge Rock",
	energy				= 0,
	flammable			= 0,
	useFootPrintCollisionVolume = true,
	footprintX			= 23,
	footprintZ			= 14,
	height				= "298",
	hitdensity			= "5",
	metal				= 20,
	indestructible			=true,
	object				= "features/edificios/helipuerto1.dae",
	reclaimable			= false,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "false", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})

