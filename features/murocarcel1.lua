local objectname= "murocarcel1" 
local featureDef	=	{
	name			= "murocarcel1",
	world				="All Worlds",
	description				="central",
	category				="buildings",
	object				="features/edificios/murocarcel1.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "Box",
	useFootPrintCollisionVolume = true,
	footprintx				=6,
	footprintz				=1,
	height				=30,
	blocking				=true,
	upright				=false,
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
