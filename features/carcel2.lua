local objectname= "carcel2" 
local featureDef	=	{
	name			= "carcel2",
	world				="All Worlds",
	description				="carcel",
	category				="buildings",
	object				="features/edificios/carcel2.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=12,
	footprintz				=25,
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
