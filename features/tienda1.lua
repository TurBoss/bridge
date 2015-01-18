local objectname= "tienda1" 
local featureDef	=	{
	name			= "tienda1",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/edificios/tienda1.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=10,
	footprintz				=5,
	height				=30,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	energy				=0,

	damage				=5000,
	flammable				=false,
	reclaimable				=false,
	indestructible			=true,
	noselect=true,
	autoreclaimable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "false", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
