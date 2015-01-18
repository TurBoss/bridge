local objectname= "central2" 
local featureDef	=	{
	name			= "central2",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/edificios/central2.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "box",
	useFootPrintCollisionVolume = true,
	footprintx				=18,
	footprintz				=15,
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
