-- (c) 2014 Serena Qi and Shiyu Luo
-- Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.

import Graphics.Gloss

picture :: Float -> Picture	

main = animate (InWindow "CPU" (1000, 650) (20,20)) white picture 

picture time
	= Pictures [Translate (0) (0) (backgroundcolor),
				Translate (0) (0) (background time),
				Translate (-20) (30) (hair),
				Translate (20) (30) (hair),				
				scale (1.2) (1.8) (Color (orange) (circleSolid 80)),
				Translate (-35) (20) (eyeBrowse),
				Translate (35) (20) (eyeBrowse),
				Translate (0) (-10) (nose),
				Translate (-35) (35) (eye),
				Translate (35) (35) (eye),
				Translate (-10) (-40) (drawE time),	
				floatingname time
				--Translate (700) (-500) (scale (5) (5) (Text "Doctor Anand"))
	           ]

drawE :: Float -> Picture
drawE t = Translate (2 *(valueAt positions 10(abs(cos(t*10))))) (2 * (valueAt positions 10 (abs(sin(t*10)))))
         $ Color black
         $ polygon [(30,0), (70, -70), (0,-30),(-70,-70), (-30,0)]

valueAt :: [Float] -> Float -> Float -> Float
valueAt values vOff t = 
  let tPrev = floor t
      tNext = tPrev+10
      tFrac = t - fromIntegral tPrev
  in if tPrev < 0 || tNext > (length values) - 2 
     then vOff
     else (values !! tPrev) * (1 - tFrac) +
          (values !! tNext) * (tFrac)
     
positions = [1..50] :: [Float]

eyeBrowse
	= Pictures [rotate (-50) (thickArc (0) (80)(50) (10))]
	
nose
	= Pictures [Color (magenta) $ polygon [(17,0), (-17,0), (0,40)]]
	
eye 
	= Pictures [scale (2.2) (1) (circle 10),
	            circleSolid (9)
				]
				
floatingname :: Float -> Picture
floatingname t = Translate(-35 *  abs(sin(t ))) (0 ) (doctor)
dash
	= Pictures [Color (black) $ rectangleSolid 3 25]
horizdash 
	= Pictures [Color (black) $ rectangleSolid 20 3]
diagdash 
	= rotate (-55) dash 
diagdash2
	= rotate (20) dash
diagdash3 
	= rotate (-20) dash
doctor 
	= Pictures [Translate (150)(-300) (dash),
	  Translate (160) (-290) (horizdash),
	  Translate (160) (-310) (horizdash),
	  Translate (170)(-300) (Scale 0.8 0.8 (dash)),
	  Translate (185)(-300) (thickCircle 5.5 10),
	  Translate (200)(-300) (dash),
	  Translate (210)(-290) (horizdash),
	  Translate (210)(-310) (horizdash),
	  Translate (235)(-290) (horizdash),
	  Translate (235)(-300) (dash),
	  Translate (258)(-300) (thickCircle 5.5 10),
	  Translate (275)(-300) (dash),
	  Translate (282) (-290) (horizdash),
	  Translate (282) (-302) (horizdash),
	  Translate (293) (-296) (rectangleSolid 3 15),
	  Translate (282) (-306) (diagdash),
	  Translate (0)(0)(anand),
	  Translate (42)(0)(anand),
	  Translate (400)(-300) (dash),
	  Translate (410) (-290) (horizdash),
	  Translate (410) (-310) (horizdash),
	  Translate (420) (-300) (Scale 0.8 0.8 (dash))
	]
anand 
	= Pictures [Translate (320)(-300) (diagdash2),
				Translate (330)(-300) (diagdash3),
				Translate (325)(-302) (rectangleSolid 10 3),
				Translate (340)(-300) (dash),
				Translate (352)(-300) (dash),
				Translate (345)(-300) (diagdash3)
	]

backgroundcolor = Pictures[Color (light(light(light red))) (rectangleSolid(1000) (650))]
	
background :: Float -> Picture
background t = scale (0.5 * abs(sin (t * 3))) (0.5 * abs(sin (t * 3))) (backs)

backs
	= Pictures[rotate (0) (back),
			   rotate (45) (back),
			   rotate (90) (back),
			   rotate (135) (back),
			   rotate (180) (back),
			   rotate (225) (back),
			   rotate (270) (back),
			   rotate (315) (back)
			 ]

back = 
	 Pictures [color (light magenta) (polygon[(0, 520), (300,0), (-300, 0)])]

hair
	 = Pictures [scale (1.2) (1.7) (Color (black) (circleSolid 70))]

