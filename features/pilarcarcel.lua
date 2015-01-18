local objectname= "pilarcarcel" 
local featureDef	=	{
	name			= "pilarcarcel",
	world				="All Worlds",
	description				="carcel",
	category				="buildings",
	object				="features/edificios/pilarcarcel.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "Box",
	footprintx				=1,
	footprintz				=1,
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
