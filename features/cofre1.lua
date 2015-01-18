local objectname= "cofre1" 
local featureDef	=	{
	name				= "cofre1",
	world				="All Worlds",
	description			="simple rock",
	category			="mineral",
	object				="features/cofre/cofre1.dae",
	footprintx			=4,
	footprintz			=4,
	height				=30,
	blocking			=true,
	upright				=true,
	hitdensity			= "5",
	metal				=350,

	damage				=10000,
	flammable			=true,
	reclaimable			=true,
	autoreclaimable		=false,
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
