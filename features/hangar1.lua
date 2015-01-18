local objectname= "hangar1" 
local featureDef	=	{
	name			= "hangar1",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/edificios/hangar1.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=37,
	footprintz				=31,
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
