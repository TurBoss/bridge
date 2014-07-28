local objectname= "prock_4" 
local featureDef	=	{
	name				= "prock_4",
	world				="All Worlds",
	description			="simple rock",
	category			="Rocks",
	object				="features/procks/prock_4.dae",
	footprintx			=2,
	footprintz			=2,
	height				=30,
	blocking			=true,
	upright				=true,
	hitdensity			= "5",
	metal				=50,

	damage				=3500,
	flammable			=true,
	reclaimable			=true,
	autoreclaimable		=false,
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
