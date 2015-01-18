local objectname= "edificiocochera1" 
local featureDef	=	{
	name			= "edificiocochera1",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/edificios/edificiocochera1.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=23,
	footprintz				=17,
	height				=10,
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

