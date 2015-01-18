model = {
   
   radius = 50.0,
   --height = 40,
   midpos = {0,20,0}, -- model center offset
   tex1 = "mineral1.png", -- same as S3O texture 1
   tex2 = "mineral2.png", -- same as S3O texture 2
   --[[invertteamcolor = true, -- invert tex1 alpha channel
   fliptextures = true, -- turn textures upside down
   pieces = {
      root = {
         rotate = {-90,0,0},
         offset = {10,0,0}
      },
      turret = {
         parent = "chassis",
         rotateZ = 30,
         offsetY = 20,
      }
   }]]--
}
return model
