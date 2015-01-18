local objectname= "finca2" 
local featureDef	=	{
	name			= "finca2",
	world				="All Worlds",
	description				="carcel",
	category				="buildings",
	object				="features/edificios/finca2.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=13,
	footprintz				=19,
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
