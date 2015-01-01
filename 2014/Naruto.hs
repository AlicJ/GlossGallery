-- (c) 2014 Yulun Wu and Yunfeng Li
-- Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.

import Graphics.Gloss

timeScale = 10 -- change this number to speed up or slow down the animation

main = kaiyan

-- To activate sharingan, type "kaiyan" in the ghci
-- or compile "ghc -O2 --make Naruto" and run "./Naruto"

draw = animate (InWindow "Naruto" (1000, 1000) (200,500)) black

kaiyan = draw $ \t -> (scale 0.8 0.3) $Pictures [sharingan 150 (-t*timeScale)]  
	

sharingan radius t =  
	Pictures 
	[
		archf1 (3*t+170) radius,
		archf2 (0) radius,
		archf1 (0) (radius-10),
		archf2 (3*t+170) (radius-10),
		archf1 (3*t+140) (radius-20),
		archf2 (0) (radius-20),
		archf1 (0) (radius-30),
		archf2 (3*t+140) (radius-30),
		archf1 (3*t+120) (radius-40),
		archf2 (0) (radius-40),
		archf1 (0) (radius-50),
		archf2 (3*t+120) (radius-50),
		archf1 (3*t+90) (radius-60),
		archf2 (0) (radius-60),
		archf1 (0) (radius-70),
		archf2 (3*t+90) (radius-70),
		archf1 (3*t+60) (radius-80),
		archf2 (0) (radius-80),
		archf1 (0) (radius-90),
		archf2 (3*t+60) (radius-90),
		archf1 (3*t+30) (radius-100),
		archf2 (0) (radius-100),
		archf1 (0) (radius-110),
		archf2 (3*t+30) (radius-110),
		archf1 (3*t+10) (radius-120),
		archf2 (0) (radius-120),
		archf1 (0) (radius-130),
		archf2 (3*t+10) (radius-130),
		archf1 (3*t+5) (radius-140),
		archf2 (0) (radius-140),
		---- 
		
	Rotate (-60+t) $(Translate (radius+30) (radius) $(color white (arc 0 180 60))),
	Rotate (-60+t) $(Translate (radius+60) (radius) $(color white (arc 0 180 30))), 
	Rotate (-60+t) $(Translate (radius) (radius) $(color white (arc 180 0 30))), 
     
	Rotate (-180+t) $(Translate (radius+30) (radius) $(color white (arc 0 180 60))),
	Rotate (-180+t) $(Translate (radius+60) (radius) $(color white (arc 0 180 30))), 
	Rotate (-180+t) $(Translate (radius) (radius) $(color white (arc 180 0 30))), 
     
	Rotate (-300+t) $(Translate (radius+30) (radius) $(color white (arc 0 180 60))),
	Rotate (-300+t) $(Translate (radius+60) (radius) $(color white (arc 0 180 30))), 
	Rotate (-300+t) $(Translate (radius) (radius) $(color white (arc 180 0 30))),
     
	Rotate (-60+t) $(color white(arc 60 150 (radius + 70))), 
	Rotate (-60+t) $(color white(arc 180 270 (radius + 70))), 
	Rotate (-60+t) $(color white(arc 300 390 (radius + 70))),     
     


	Rotate (-0.4*t) $(Translate (1.6*(radius)+33) (1.6*radius) $(color white (arc 0 180 66))),
	Rotate (-0.4*t) $(Translate (1.6*(radius)+66) (1.6*radius) $(color white (arc 0 180 33))), 
	Rotate (-0.4*t) $(Translate (1.6*(radius)) (1.6*radius) $(color white (arc 180 0 33))), 
     
	Rotate (-120-0.4*t) $(Translate (1.6*(radius)+33) (1.6*radius) $(color white (arc 0 180 66))),
	Rotate (-120-0.4*t) $(Translate (1.6*(radius)+66) (1.6*radius) $(color white (arc 0 180 33))), 
	Rotate (-120-0.4*t) $(Translate (1.6*(radius)) (1.6*radius) $(color white (arc 180 0 33))),
     
	Rotate (-240-0.4*t) $(Translate (1.6*(radius)+33) (1.6*radius) $(color white (arc 0 180 66))),
	Rotate (-240-0.4*t) $(Translate (1.6*(radius)+66) (1.6*radius) $(color white (arc 0 180 33))), 
	Rotate (-240-0.4*t) $(Translate (1.6*(radius)) (1.6*radius) $(color white (arc 180 0 33))),
     
	Rotate (-60-0.4*t) $(color white(arc 0 90 (radius + 185))), 
	Rotate (-60-0.4*t) $(color white(arc 120 210 (radius + 185))), 
	Rotate (-60-0.4*t) $(color white(arc 240 330 (radius + 185))), 
	
	
	
	color white (Circle 430), 
	
	
	
	(scale 0.654 2) $(Translate (0) (490) $(Rotate (-30+90*(0.4)*t) $(Translate (0.7*(radius+30)) (0.7*radius) $(color white (arc 0 180 42))))), -- To change the speed Rotate(...100*t)
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-30+90*(0.4)*t) $(Translate (0.7*(radius+60)) (0.7*radius) $(color white (arc 0 180 21))))), 
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-30+90*(0.4)*t) $(Translate (0.7*(radius)) (0.7*radius) $(color white (arc 180 0 21))))), 
     
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-150+90*(0.4)*t) $(Translate (0.7*(radius+30)) (0.7*radius) $(color white (arc 0 180 42))))),
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-150+90*(0.4)*t) $(Translate (0.7*(radius+60)) (0.7*radius) $(color white (arc 0 180 21))))), 
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-150+90*(0.4)*t) $(Translate (0.7*(radius)) (0.7*radius) $(color white (arc 180 0 21))))),
     
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-270+90*(0.4)*t) $(Translate (0.7*(radius+30)) (0.7*radius) $(color white (arc 0 180 42))))),
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-270+90*(0.4)*t) $(Translate (0.7*(radius+60)) (0.7*radius) $(color white (arc 0 180 21))))), 
     (scale 0.654 2) $(Translate (0) (490) $(Rotate (-270+90*(0.4)*t) $(Translate (0.7*(radius)) (0.7*radius) $(color white (arc 180 0 21))))),
     
     
     
     
     
     (scale 0.654 2) $(Translate (-300) (-240) $(Rotate (-170) $(Translate (0.8*(radius+30)) (0.8*radius) $(color white (arc 0 180 48))))),
     (scale 0.654 2) $(Translate (-300) (-240) $(Rotate (-170) $(Translate (0.8*(radius+60)) (0.8*radius) $(color white (arc 0 180 24))))), 
     (scale 0.654 2) $(Translate (-300) (-240) $(Rotate (-170) $(Translate (0.8*(radius)) (0.8*radius) $(color white (arc 180 0 24))))),
     (scale 0.654 2) $(Translate (-300) (-240) $(Rotate (-170) $(Translate (0.8*(radius)) (0.8*radius) $(color white (Circle 3.4))))),
     
     
     (scale 0.654 2) $(Translate (-200) (-250) $(Rotate (-190) $(Translate (0.8*(radius+30)) (0.8*radius) $(color white (arc 0 180 48))))),
     (scale 0.654 2) $(Translate (-200) (-250) $(Rotate (-190) $(Translate (0.8*(radius+60)) (0.8*radius) $(color white (arc 0 180 24))))), 
     (scale 0.654 2) $(Translate (-200) (-250) $(Rotate (-190) $(Translate (0.8*(radius)) (0.8*radius) $(color white (arc 180 0 24))))),
     (scale 0.654 2) $(Translate (-200) (-250) $(Rotate (-190) $(Translate (0.8*(radius)) (0.8*radius) $(color white (Circle 3.4))))),
     
     
     (scale 0.654 2) $(Translate (-100) (-270) $(Rotate (-210) $(Translate (0.8*(radius+30)) (0.8*radius) $(color white (arc 0 180 48))))),
     (scale 0.654 2) $(Translate (-100) (-270) $(Rotate (-210) $(Translate (0.8*(radius+60)) (0.8*radius) $(color white (arc 0 180 24))))), 
     (scale 0.654 2) $(Translate (-100) (-270) $(Rotate (-210) $(Translate (0.8*(radius)) (0.8*radius) $(color white (arc 180 0 24))))),
     (scale 0.654 2) $(Translate (-100) (-270) $(Rotate (-210) $(Translate (0.8*(radius)) (0.8*radius) $(color white (Circle 3.4))))),
     
     
     (scale 0.654 2) $(Translate (-80) (-300) $(Rotate (-257) $(Translate (0.8*(radius+30)) (0.8*radius) $(color white (arc 0 180 48))))),
     (scale 0.654 2) $(Translate (-80) (-300) $(Rotate (-257) $(Translate (0.8*(radius+60)) (0.8*radius) $(color white (arc 0 180 24))))), 
     (scale 0.654 2) $(Translate (-80) (-300) $(Rotate (-257) $(Translate (0.8*(radius)) (0.8*radius) $(color white (arc 180 0 24))))), 
     (scale 0.654 2) $(Translate (-80) (-300) $(Rotate (-257) $(Translate (0.8*(radius)) (0.8*radius) $(color white (Circle 3.4))))), 
     
     (scale 0.654 2) $(Translate (55) (-310) $(Rotate (-271) $(Translate (0.8*(radius+30)) (0.8*radius) $(color white (arc 0 180 48))))),
     (scale 0.654 2) $(Translate (55) (-310) $(Rotate (-271) $(Translate (0.8*(radius+60)) (0.8*radius) $(color white (arc 0 180 24))))), 
     (scale 0.654 2) $(Translate (55) (-310) $(Rotate (-271) $(Translate (0.8*(radius)) (0.8*radius) $(color white (arc 180 0 24))))), 
     (scale 0.654 2) $(Translate (55) (-310) $(Rotate (-271) $(Translate (0.8*(radius)) (0.8*radius) $(color white (Circle 3.4))))), 
     
     (scale 0.654 2) $(Translate (200) (-267) $(Rotate (-270) $(Translate (0.8*(radius+30)) (0.8*radius) $(color white (arc 0 180 48))))),
     (scale 0.654 2) $(Translate (200) (-267) $(Rotate (-270) $(Translate (0.8*(radius+60)) (0.8*radius) $(color white (arc 0 180 24))))), 
     (scale 0.654 2) $(Translate (200) (-267) $(Rotate (-270) $(Translate (0.8*(radius)) (0.8*radius) $(color white (arc 180 0 24))))), 
     (scale 0.654 2) $(Translate (200) (-267) $(Rotate (-270) $(Translate (0.8*(radius)) (0.8*radius) $(color white (Circle 3.4))))), 
     
     (scale 0.654 2) $(Translate (320) (-230) $(Rotate (-280) $(Translate (0.8*(radius+30)) (0.8*radius) $(color white (arc 0 180 48))))),
     (scale 0.654 2) $(Translate (320) (-230) $(Rotate (-280) $(Translate (0.8*(radius+60)) (0.8*radius) $(color white (arc 0 180 24))))), 
     (scale 0.654 2) $(Translate (320) (-230) $(Rotate (-280) $(Translate (0.8*(radius)) (0.8*radius) $(color white (arc 180 0 24))))),
     (scale 0.654 2) $(Translate (320) (-230) $(Rotate (-280) $(Translate (0.8*(radius)) (0.8*radius) $(color white (Circle 3.4)))))
     
     
     
	
	]



archf1 t r = Pictures 
    [color white (arc (t+180) t r)]			
			
archf2 t r = Pictures 
    [color black (arc (t+180) t r)]				
			









			
an = animate (InWindow "Naruto" (1000, 1000) (200,500)) black chakra
-- To activate sharingan, type "kaiyan" in the ghci

radius = 150

t = 0.5

chakra radiust =  
	Pictures 
	[
		Translate (-400) (400) $(Rotate (-30-5*t) $(Translate (0.7*(radius+30)) (0.7*radius) $(color white (arc 0 180 42)))),
     Translate (-400) (400) $(Rotate (-30-5*t) $(Translate (0.7*(radius+60)) (0.7*radius) $(color white (arc 0 180 21)))), 
     Translate (-400) (400) $(Rotate (-30-5*t) $(Translate (0.7*(radius)) (0.7*radius) $(color white (arc 180 0 21)))), 
     
     Translate (-400) (400) $(Rotate (-150-5*t) $(Translate (0.7*(radius+30)) (0.7*radius) $(color white (arc 0 180 42)))),
     Translate (-400) (400) $(Rotate (-150-5*t) $(Translate (0.7*(radius+60)) (0.7*radius) $(color white (arc 0 180 21)))), 
     Translate (-400) (400) $(Rotate (-150-5*t) $(Translate (0.7*(radius)) (0.7*radius) $(color white (arc 180 0 21)))),
     
     Translate (-400) (400) $(Rotate (-270-5*t) $(Translate (0.7*(radius+30)) (0.7*radius) $(color white (arc 0 180 42)))),
     Translate (-400) (400) $(Rotate (-270-5*t) $(Translate (0.7*(radius+60)) (0.7*radius) $(color white (arc 0 180 21)))), 
     Translate (-400) (400) $(Rotate (-270-5*t) $(Translate (0.7*(radius)) (0.7*radius) $(color white (arc 180 0 21))))
		]
		


			
			


