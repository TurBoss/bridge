local objectname= "central1" 
local featureDef	=	{
	name			= "central1",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/edificios/central1.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=14,
	footprintz				=12,
	height				=20,
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
