local objectname= "banco1" 
local featureDef	=	{
	name			= "banco1",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/escenografia/banco1.dae",
	useFootPrintCollisionVolume = true,
	footprintx				=2,
	footprintz				=0.5,
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
