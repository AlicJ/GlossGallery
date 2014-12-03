--(c) 2014 Tanya Bouman, Natasha DeCoste
--Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warrantee .

import Graphics.Gloss
import Graphics.Gloss.Data.Color
import Graphics.Gloss.Interface.Pure.Game
import Graphics.Gloss.Interface.Pure.Simulate
import Graphics.Gloss.Interface.Pure.Display

main = space	  

space = draw $ \t -> Pictures $ 
	
	[
---------------------------------------------------------------------------------------------------background

	Rotate (2*t) $ Scale (1+(sin(t)/10)) (1+(sin(t)/10)) $ stars (t),

	Scale (1+(cos(t)/18)) (1+(cos(t)/18)) allplanets,

--------------------------------------------------------------------------------------------------- spaceship
	Rotate (15*t) $ Translate (400*sin(t)/8) ((400*cos(t))/8) (Translate ((sin(t)*30)/3) (cos(t)*40) $ enterprise),

	Translate 0 80 $ Scale (t/20) (t/20) $ title
	

	
	]

--------------------------------------------------------------------------------------------------- planets		
allplanets = Pictures [	
	planet (-300) 300 jupiter (35*5), 			--basic circle shape
	jupiterpattern, -- crater pattern
	Translate 30 (-40) $ scale 0.9 1 $ detailplanet (-300) 300 (planethighlight 5)  25, -- highlight on the planet

	planet (-100) 100 mars 35,
	marspattern,
	Translate 8 (-14) $ scale 0.9 1 $ detailplanet (-100) 100 (planethighlight 5)  5,

	planet 0 0 (earth 255) 65,
	earthpattern,
	Color (earth 120) $ circleSolid 65,
	Translate 28 (-15) $ scale 0.9 1 $ detailplanet 0 0 (planethighlight 5) 10,

	planet 100 (-100) venus 65,
	venuspattern,
	Translate 25 (-18) $ scale 0.9 1 $ detailplanet 100 (-100) (planethighlight 5)  10,
	

	planet 200 (-200) mercury 30,
	mercurypattern,
	Translate 34 (-8) $ scale 0.9 1 $ detailplanet 200 (-200) (planethighlight 5)  4
	]

---------------------------------------------------------------------------------------planet textures
earthpattern =
	Pictures [
	Translate (-5.5) 0 $ Scale 4 4 $ Color continent $ Polygon [(-10,4),(-7,7),(-6,6),(-5,6),(-4,5),(-1,5),(0,6),(2,6),(2,4),(1,4),(1,2),(3,2),(3,1),(4,1),(4,5),(5,5),(7,4),(7,1),(6,-1),(6,-4),(7,-5),(6,-6),(5,-5),(2,-8),(5,-11),(5,-12),(3,-12),(-2,-8),(-4,-8),(-9,-4),(-9,3)],
	Translate (-4.5) 0 $ Scale 4 4  $ Color continent $ Polygon [(2,9),(4,11),(6,11),(9,8),(9,6),(7,6),(4,9),(3,8),(2,9)],
	Translate 6 (-1) $ Scale 3.5 3.5 $ Color continent $ Polygon [(-1,4),(-1,6),(1,7),(7,4),(7,1),(6,1),(5,0),(4,1),(3.6,1.5),(3,1),(2.7,1),(2,0),(1,1),(2,4),(-1,4)]
	]

marspattern = 
	Pictures [
	Translate (-90) 110 $ Color (cratercolor 18) $ ThickCircle 1 4,
	Translate (-100) 75 $ Color (cratercolor 98) $ ThickCircle 2.2 5,
	Translate (-145) 68 $ Color (cratercolor 100) $ ThickCircle 1 4,
	Translate (-70) 120 $ Color (cratercolor 67) $ ThickCircle 2 3,
	Translate (-134) 130 $ Color (cratercolor 30) $ ThickCircle 1 3,
	Translate (-145) 116 $ Color (cratercolor 80) $ ThickCircle 1 2.3,
	Translate (-88) 95 $ Color (cratercolor 26) $ ThickCircle 2 3,
	Translate (-115) 87 $ Color (cratercolor 60) $ ThickCircle 1 3
	]

venuspattern =
	Pictures [
	Translate 75 (-100) $ Color (cratercolor 98) $ ThickCircle 4 8,
	Translate 90 (-180) $ Color (cratercolor 50) $ ThickCircle 2 8,
	Translate 100 (-80) $ Color (cratercolor 37) $ ThickCircle 3 7,
	Translate 58 (-120) $ Color (cratercolor 56) $ ThickCircle 1 4,
	Translate 45 (-160) $ Color (cratercolor 56) $ ThickCircle 1 2,
	Translate 140 (-140) $ Color (cratercolor 75) $ ThickCircle 4 8,
	Translate 122 (-116) $ Color (cratercolor 48) $ ThickCircle 4 8,
	Translate 160 (-75) $ Color (cratercolor 67) $ ThickCircle 4 8
	] 

mercurypattern = 
	Pictures [
	Translate 210 (-190) $ Color (cratercolor 69) $ ThickCircle 2 4,
	Translate 189 (-189) $ Color (cratercolor 50) $ ThickCircle 1.2 3,
	Translate 200 (-210) $ Color (cratercolor 40) $ ThickCircle 1 3,
	Translate 215 (-208) $ Color (cratercolor 80) $ ThickCircle 1 2
	]


jupiterpattern = 
	Pictures [
	Translate (-280) 309 $ Color (cratercolor 50) $ ThickCircle 2 4,
	Translate (-200) 330 $ Color (cratercolor 40) $ ThickCircle 6 12,
	Translate (-350) 315 $ Color (cratercolor 70) $ ThickCircle 4 8,
	Translate (-365) 380 $ Color (cratercolor 20) $ ThickCircle 15 28,
	Translate (-390) 280 $ Color (cratercolor 18) $ ThickCircle 18 35

 --makestars (x,y,b,rad,thick) = Translate x y $ Color (planethighlight b) $ Scale (sin(t)) (sin(t)) $ ThickCircle rad thick  
	]
----------------------------------------------------------------------------------------------- colour for the planets/details

cratercolor a = makeColor8 0 0 0 a

planethighlight b = makeColor8 255 255 255 b

continent :: Color
continent = makeColor8 0 255 100 255


earth e = makeColor8 30 144 255 e

mars :: Color
mars = makeColor8 220 20 60 255

jupiter :: Color
jupiter = makeColor8 255 69 0 255

venus :: Color
venus = makeColor8 255 215 0 255

mercury :: Color
mercury = makeColor8 176 196 222 255

---------------------------------------------------------------------------------------------- function for drawing the planets/planet details
planet xplanet yplanet name rad = Translate xplanet yplanet $ Color name $ circleSolid rad


detailplanet xplanet yplanet name rad = Translate  xplanet yplanet $ Color name $ ThickCircle rad (rad*10)

---------------------------------------------------------------------------------------------- enterprise

enterprise = 
	Pictures [ 
		
		Translate (-220) (-78) $ Scale 2 2 $ Color (greyN 0.45) $ Polygon [(-5,-4),(-4,-5),(5,4),(4,5)], --crossbars
		Translate (-215) (-85) $ Scale 2 2 $ Color (greyN 0.4) $ Polygon [(-4,2),(-2,4),(4,-2),(2,-4)],

		Translate (-230) (-90) $ Scale 2 2 $ Color (greyN 0.5) $ Polygon [(-4,2),(-2,4),(4,-2),(2,-4)], --engines
		Translate (-210) (-70) $ Scale 2 2 $ Color (greyN 0.5) $ Polygon [(-4,2),(-2,4),(4,-2),(2,-4)],

		Translate (-200) (-100) $ Scale 1 0.9 $ Color (greyN 0.5) $ ThickCircle 10 15, --disks
		Translate (-200) (-100) $ Scale 1 0.9 $ Color (greyN 0.7) $ ThickCircle 5 10
				
		]
-------------------------------------------------------------------------------------text
title1 = Translate (-30) 155 $ Scale 0.45 0.45 $ Color white $ Text "Space. The Final Frontier"
title = Translate (-100) 170 $ Scale 0.7 0.7 $ title1	

instructions = 
	Pictures [
	Translate 0 118 $ Scale 0.2 0.2 $ Color white $ Text "Press J to Explore Jupiter",
	Translate 0 88 $ Scale 0.2 0.2 $ Color white $ Text "Press E to Return to Earth",
	Translate 0 58 $ Scale 0.2 0.2 $ Color white $ Text "Press M to Explore Mercury",
	Translate 0 28 $ Scale 0.2 0.2 $ Color white $ Text "Press V to Explore Venus",
	Translate 0 (-2) $ Scale 0.2 0.2 $ Color white $ Text "Press R to Explore Mars"
	]
------------------------------------------------------------------------------------stars

stars t = 
		Pictures $ map makestars 
			[(-300,-250,100,2,t),(250,100,200,1,t),(0,300,70,2,t),(325,-89,150,2,t),
	 		(200,200,100,2,t),(0,-200,99,1,t),(-50,-450,99,1,t),(400,200,200,2,t),(205,-80,150,1,t),(-109,-300,103,2,t),
	 		(47,108,100,2,t),(-78,256,200,1,t),(87,94,200,2,t),(50,450,100,2,t),(79,-206,101,1,t),(-400,-300,150,2,t),(-340,-100,100,1,t),
	 		(101,204,200,2,t),(98,-189,200,1,t),(178,-178,200,1,t),(109,100,255,2,t)]

makestars (x,y,b,rad,t) = Translate x y $ Color (planethighlight b) $ circleSolid (rad+sin(t*5))   	 			

draw = animate-- opens the program in a seperate window named "Solar System"
		(InWindow
				"spacetravel" (900, 900) (0,500)) 
		black 
			
			
--interpolate function
