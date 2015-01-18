local objectname= "rascacielo2" 
local featureDef	=	{
	name			= "rascacielo2",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/edificios/rascacielo2.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=20,
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
