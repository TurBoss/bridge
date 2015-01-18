local objectname= "contenedor2" 
local featureDef	=	{
	name			= "contenedor2",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/escenografia/contenedor2.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=1.5,
	footprintz				=2.8,
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
