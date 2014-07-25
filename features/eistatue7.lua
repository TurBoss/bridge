-----------------------------------------------------------------------------
--  EIStatue7
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "EIStatue7",
	blocking			= true,
	category			= "Rocks",
	damage				= 5000,
	description			= "Mysterious Idol",
	energy				= 0,
	flammable			= 0,
	footprintX			= 2,
	footprintZ			= 2,
	height				= "42",
	hitdensity			= "5",
	metal				= 150,
	object				= "features/lathan/EIStatue7.s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})
