-- (c) 2014 Juan Santana Penner
-- Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.

import Graphics.Gloss

main = display 
	(InWindow 
		"Mario World" (1080,750) (10,10))

	--(light blue)
	(makeColor8 145 242 226 255)
	picture

-- my colors----------------------------------
--brown = dark $ makeColor 0.7 0.4 0.1 0.7
brown :: Color
brown = dim $ dark orange

bage :: Color
bage = light $ makeColor 0.7 0.5 0.2 0.7

skincolor :: Color
skincolor = light $ makeColor 0.7 0.4 0.1 0.7  

browncolor :: Color 
browncolor = dim $ dark orange

myyellow :: Color 
myyellow = makeColor 1.0 0.7 0.0 0.7


picture = Pictures[
				
				--water
				waterWave,
				Scale 0.5 0.5 $ Translate 800 (650) fish,	

				---goombas
				--Scale 0.2 0.2 $ Translate 0 0 goomba,
				Scale 0.2 0.2 $ Translate 200 (-595) goomba, 
				--Scale 0.2 0.2 $ Translate (-500) (-500) goomba,
				Scale 0.2 0.2 $ Translate 1000 (-595) goomba,
				Scale 0.2 0.2 $ Translate 1800 (-595) goomba,
				--Scale 0.2 0.2 $ Translate 0 (-500) goomba

				--Scale 0.5 0.5 $ Translate 0 0  (brick),
				Scale 0.5 0.5 $ Translate (-820) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (-660) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (-500) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (-340) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (-180) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (-20) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (140) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (300) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (460) (-495)  (brick),
				Scale 0.5 0.5 $ Translate (620) (-495)  (brick),

				Scale 0.5 0.5 $ Translate (-820) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (-660) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (-500) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (-340) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (-180) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (-20) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (140) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (300) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (460) (-655)  (brick),
				Scale 0.5 0.5 $ Translate (620) (-655)  (brick),

				----mario
				Scale 1.1 1.1 $ Translate (-300) (-23) mario,
				----cloud
				Scale 0.7 0.7 $ Translate (225) (545) cloud,
				Scale 0.7 0.7 $ Translate (-475) (500) cloud,
				Scale 0.3 0.3 $ Translate (-1800) (1100)  (Text ("World 1-1")),
				----question mark box
				Scale 0.8 0.8 $ Translate 50 200 questionMarkBox,
				Scale 0.55 0.55 $ Translate (-154) (218)  (brick),
				Scale 0.55 0.55 $ Translate (322) (218)  (brick),
				Scale 0.55 0.55 $ Translate (162) (218)  (brick)
			]
-- Eatch Plont Spotted
--https://s-media-cache-ak0.pinimg.com/236x/4b/ab/75/4bab75c2a292641b5384100b33523a7f.jpg
-- Yoshi
--http://3.bp.blogspot.com/-TqgCc8q5THM/UMc24ZzcaXI/AAAAAAAABT0/WwjFc3ArQNo/s400/Yoshi.png
--Star
--http://media-cache-ak0.pinimg.com/236x/a9/45/19/a945194df54a97fa77550cda55d747fb.jpg
-- Samus shooting
-- http://cdn.instructables.com/F3A/5B2S/H2WEVFOX/F3A5B2SH2WEVFOX.MEDIUM.jpg
-- Samus 
--http://www.mariowiki.com/images/thumb/7/73/TDS_Samus.jpg/116px-TDS_Samus.jpg
-- Link
-- http://4.bp.blogspot.com/-FWYgoWR5Yok/UDS3Vwhk2-I/AAAAAAAABNk/x5w5Mkdn6RA/s640/linkk.png
-- Kirby
--http://fc04.deviantart.net/fs29/f/2008/126/c/7/Kirby_Sprite_on_Graph_Paper_by_Kyusil.jpg


waterWave :: Picture
waterWave = Pictures[

			color white $ Translate 30 30 (rectangleSolid 30 30),

			--color white $ Translate 30 (-30) (rectangleSolid 30 30),
			color white $ Translate 60 (-30) (rectangleSolid 30 30),
			color white $ Translate 90 (-30) (rectangleSolid 30 30),
			color white $ Translate 120 (-30) (rectangleSolid 30 30),

			color blue $ Translate 90 30 (rectangleSolid 30 30),
			color blue $ Translate 30 0 (rectangleSolid 30 30),
			color blue $ Translate 60 0 (rectangleSolid 30 30),
			color blue $ Translate 90 0 (rectangleSolid 30 30),
			--color blue $ Translate 90 30 (rectangleSolid 30 30),
			color blue $ Translate 120 0 (rectangleSolid 30 30),
			color blue $ Translate 120 30 (rectangleSolid 30 30),
			color blue $ Translate 120 60 (rectangleSolid 30 30),
			color blue $ Translate 150 0 (rectangleSolid 30 30),
			color blue $ Translate 150 30 (rectangleSolid 30 30),
			color blue $ Translate 150 60 (rectangleSolid 30 30),
			color blue $ Translate 150 90 (rectangleSolid 30 30),
			color blue $ Translate 150 120 (rectangleSolid 30 30),
			color blue $ Translate 180 0 (rectangleSolid 30 30),
			color blue $ Translate 180 30 (rectangleSolid 30 30),
			color blue $ Translate 180 60 (rectangleSolid 30 30),
			color blue $ Translate 180 90 (rectangleSolid 30 30),

			color white $ Translate 60 30 (rectangleSolid 30 30),
			color white $ Translate 90 60 (rectangleSolid 30 30),
			color white $ Translate 120 90 (rectangleSolid 30 30),
			color white $ Translate 120 120 (rectangleSolid 30 30),
			color white $ Translate 150 150 (rectangleSolid 30 30),
			color white $ Translate 180 120 (rectangleSolid 30 30),
			color white $ Translate 180 90 (rectangleSolid 30 30),
			color white $ Translate 180 60 (rectangleSolid 30 30)
			]	

fish :: Picture
fish = Pictures [Translate (0) (0) (Color orange (rectangleSolid 10 10)), -- row 1 
				 Translate (10) (0) (Color orange (rectangleSolid 10 10)),
				 Translate (20) (0) (Color orange (rectangleSolid 10 10)),
				 Translate (30) (0) (Color orange (rectangleSolid 10 10)),
				 Translate (10) (-10) (Color orange (rectangleSolid 10 10)), -- row 2 
				 Translate (20) (-10) (Color orange (rectangleSolid 10 10)),
				 Translate (30) (-10) (Color orange (rectangleSolid 10 10)),
				 Translate (40) (-10) (Color orange (rectangleSolid 10 10)),
				 Translate (50) (-10) (Color orange (rectangleSolid 10 10)),
				 Translate (0) (-20) (Color red (rectangleSolid 10 10)), -- row 3
				 Translate (10) (-20) (Color red (rectangleSolid 10 10)),
				 Translate (20) (-20) (Color red (rectangleSolid 10 10)),
				 Translate (30) (-20) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-20) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-20) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-20) (Color red (rectangleSolid 10 10)),
				 Translate (70) (-20) (Color white (rectangleSolid 10 10)),
				 Translate (80) (-20) (Color white (rectangleSolid 10 10)),
				 Translate (-20) (-30) (Color white (rectangleSolid 10 10)), -- row 4
				 Translate (-10) (-30) (Color red (rectangleSolid 10 10)),
				 Translate (0) (-30) (Color white (rectangleSolid 10 10)),
				 Translate (10) (-30) (Color white (rectangleSolid 10 10)),
				 Translate (20) (-30) (Color red (rectangleSolid 10 10)),
				 Translate (30) (-30) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-30) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-30) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-30) (Color white (rectangleSolid 10 10)),
				 Translate (70) (-30) (Color white (rectangleSolid 10 10)),
				 Translate (80) (-30) (Color white (rectangleSolid 10 10)),
				 Translate (90) (-30) (Color white (rectangleSolid 10 10)),
				 Translate (-30) (-40) (Color white (rectangleSolid 10 10)), -- row 5 
				 Translate (-20) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (-10) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (0) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (10) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (20) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (30) (-40) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-40) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-40) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (70) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (80) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (90) (-40) (Color white (rectangleSolid 10 10)),
				 Translate (-30) (-50) (Color white (rectangleSolid 10 10)),  -- row 6
				 Translate (-20) (-50) (Color red (rectangleSolid 10 10)),
				 Translate (-10) (-50) (Color white (rectangleSolid 10 10)),
				 Translate (0) (-50) (Color white (rectangleSolid 10 10)),
				 Translate (10) (-50) (Color red (rectangleSolid 10 10)),
				 Translate (20) (-50) (Color white (rectangleSolid 10 10)),
				 Translate (30) (-50) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-50) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-50) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-50) (Color white (rectangleSolid 10 10)),
				 Translate (70) (-50) (Color white (rectangleSolid 10 10)),
				 Translate (80) (-50) (Color white (rectangleSolid 10 10)),
				 Translate (90) (-50) (Color white (rectangleSolid 10 10)),
				 Translate (-30) (-60) (Color white (rectangleSolid 10 10)), -- row 7
				 Translate (-20) (-60) (Color red (rectangleSolid 10 10)),
				 Translate (-10) (-60) (Color white (rectangleSolid 10 10)),
				 Translate (0) (-60) (Color white (rectangleSolid 10 10)),
				 Translate (10) (-60) (Color red (rectangleSolid 10 10)),
				 Translate (20) (-60) (Color white (rectangleSolid 10 10)),
				 Translate (30) (-60) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-60) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-60) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-60) (Color white (rectangleSolid 10 10)),
				 Translate (70) (-60) (Color white (rectangleSolid 10 10)),
				 Translate (80) (-60) (Color white (rectangleSolid 10 10)),
				 Translate (-20) (-70) (Color white (rectangleSolid 10 10)), -- row 8
				 Translate (-10) (-70) (Color red (rectangleSolid 10 10)),
				 Translate (0) (-70) (Color white (rectangleSolid 10 10)),
				 Translate (10) (-70) (Color white (rectangleSolid 10 10)),
				 Translate (20) (-70) (Color red (rectangleSolid 10 10)),
				 Translate (30) (-70) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-70) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-70) (Color white (rectangleSolid 10 10)),
				 Translate (60) (-70) (Color white (rectangleSolid 10 10)),
				 Translate (70) (-70) (Color white (rectangleSolid 10 10)),
				 Translate (80) (-70) (Color red (rectangleSolid 10 10)),
				 Translate (-30) (-80) (Color orange (rectangleSolid 10 10)), -- row 9
				 Translate (-20) (-80) (Color orange (rectangleSolid 10 10)),
				 Translate (-10) (-80) (Color orange (rectangleSolid 10 10)),
				 Translate (0) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (10) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (20) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (30) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (70) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (80) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (90) (-80) (Color red (rectangleSolid 10 10)),
				 Translate (-20) (-90) (Color red (rectangleSolid 10 10)), -- row 10
				 Translate (-10) (-90) (Color orange (rectangleSolid 10 10)),
				 Translate (0) (-90) (Color orange (rectangleSolid 10 10)),
				 Translate (10) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (20) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (30) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (70) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (80) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (90) (-90) (Color red (rectangleSolid 10 10)),
				 Translate (100) (-90) (Color orange (rectangleSolid 10 10)),
				 Translate (-20) (-100) (Color red (rectangleSolid 10 10)), -- row 11 
				 Translate (-10) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (0) (-100) (Color orange (rectangleSolid 10 10)),
				 Translate (10) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (20) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (30) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (70) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (80) (-100) (Color red (rectangleSolid 10 10)),
				 Translate (90) (-100) (Color orange (rectangleSolid 10 10)),
				 Translate (100) (-100) (Color orange (rectangleSolid 10 10)),
				 Translate (-30) (-110) (Color orange (rectangleSolid 10 10)), -- row 12 
				 Translate (-20) (-110) (Color orange (rectangleSolid 10 10)),
				 Translate (-10) (-110) (Color orange (rectangleSolid 10 10)),
				 Translate (0) (-110) (Color white (rectangleSolid 10 10)),
				 Translate (10) (-110) (Color white (rectangleSolid 10 10)),
				 Translate (20) (-110) (Color white (rectangleSolid 10 10)),
				 Translate (30) (-110) (Color red (rectangleSolid 10 10)),
				 Translate (40) (-110) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-110) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-110) (Color red (rectangleSolid 10 10)),
				 Translate (70) (-110) (Color red (rectangleSolid 10 10)),
				 Translate (80) (-110) (Color orange (rectangleSolid 10 10)),
				 Translate (90) (-110) (Color orange (rectangleSolid 10 10)),
				 Translate (100) (-110) (Color orange (rectangleSolid 10 10)),
				 Translate (-10) (-120) (Color white (rectangleSolid 10 10)), -- row 13
				 Translate (0) (-120) (Color white (rectangleSolid 10 10)),
				 Translate (10) (-120) (Color white (rectangleSolid 10 10)),
				 Translate (20) (-120) (Color white (rectangleSolid 10 10)),
				 Translate (30) (-120) (Color white (rectangleSolid 10 10)),
				 Translate (40) (-120) (Color red (rectangleSolid 10 10)),
				 Translate (50) (-120) (Color red (rectangleSolid 10 10)),
				 Translate (60) (-120) (Color red (rectangleSolid 10 10)),
				 Translate (70) (-120) (Color orange (rectangleSolid 10 10)),
				 Translate (80) (-120) (Color orange (rectangleSolid 10 10)),
				 Translate (90) (-120) (Color orange (rectangleSolid 10 10)),
				 Translate (70) (-130) (Color orange (rectangleSolid 10 10)),-- row 14 
				 Translate (80) (-130) (Color orange (rectangleSolid 10 10))
				]

goomba :: Picture
goomba =   Pictures[
			--middle line
			color brown $ Translate 0 0 (rectangleSolid 30 30),
			color black $ Translate 0 30 (rectangleSolid 30 30),
			color brown $ Translate 0 60 (rectangleSolid 30 30),
			color brown $ Translate 0 90 (rectangleSolid 30 30),
			color brown $ Translate 0 120 (rectangleSolid 30 30),
			color brown $ Translate 0 150 (rectangleSolid 30 30),
			color brown $ Translate 0 180 (rectangleSolid 30 30),
			color brown $ Translate 0 210 (rectangleSolid 30 30),
			color brown $ Translate 0 (-30) (rectangleSolid 30 30),
			color brown $ Translate 0 (-60) (rectangleSolid 30 30),
			color bage $ Translate 0 (-90) (rectangleSolid 30 30),
			color bage $ Translate 0 (-120) (rectangleSolid 30 30),
			color bage $ Translate 0 (-150) (rectangleSolid 30 30),
			color bage $ Translate 0 (-180) (rectangleSolid 30 30),
			color bage $ Translate 0 (-210) (rectangleSolid 30 30),
			color bage $ Translate 0 (-240) (rectangleSolid 30 30),

			--1 row left from middle line
			color bage $ Translate (-30) 0 (rectangleSolid 30 30),
			color black $ Translate (-30) 30 (rectangleSolid 30 30),
			color brown $ Translate (-30) 60 (rectangleSolid 30 30),
			color brown $ Translate (-30) 90 (rectangleSolid 30 30),
			color brown $ Translate (-30) 120 (rectangleSolid 30 30),
			color brown $ Translate (-30) 150 (rectangleSolid 30 30),
			color brown $ Translate (-30) 180 (rectangleSolid 30 30),
			color brown $ Translate (-30) 210 (rectangleSolid 30 30),
			color bage $ Translate (-30) (-30) (rectangleSolid 30 30),
			color brown $ Translate (-30) (-60) (rectangleSolid 30 30),
			color bage $ Translate (-30) (-90) (rectangleSolid 30 30),
			color bage $ Translate (-30) (-120) (rectangleSolid 30 30),
			color bage $ Translate (-30) (-150) (rectangleSolid 30 30),
			color bage $ Translate (-30) (-180) (rectangleSolid 30 30),
			color bage $ Translate (-30) (-210) (rectangleSolid 30 30),
			color black $ Translate (-30) (-240) (rectangleSolid 30 30),

			--2 rows left from middle line
			color black $ Translate (-60) 0 (rectangleSolid 30 30),
			color black $ Translate (-60) 30 (rectangleSolid 30 30),
			color black	$ Translate (-60) 60 (rectangleSolid 30 30),
			color brown $ Translate (-60) 90 (rectangleSolid 30 30),
			color brown $ Translate (-60) 120 (rectangleSolid 30 30),
			color brown $ Translate (-60) 150 (rectangleSolid 30 30),
			color brown $ Translate (-60) 180 (rectangleSolid 30 30),
			color bage $ Translate (-60) (-30) (rectangleSolid 30 30),
			color brown $ Translate (-60) (-60) (rectangleSolid 30 30),
			color bage $ Translate (-60) (-90) (rectangleSolid 30 30),
			color bage $ Translate (-60) (-120) (rectangleSolid 30 30),
			color bage $ Translate (-60) (-150) (rectangleSolid 30 30),
			color bage $ Translate (-60) (-180) (rectangleSolid 30 30),
			color black $ Translate (-60) (-210) (rectangleSolid 30 30),
			color black $ Translate (-60) (-240) (rectangleSolid 30 30),

			--3 rows left from middle line
			color bage $ Translate (-90) 0 (rectangleSolid 30 30),
			color bage $ Translate (-90) 30 (rectangleSolid 30 30),
			color bage $ Translate (-90) 60 (rectangleSolid 30 30),
			color black $ Translate (-90) 90 (rectangleSolid 30 30),
			color brown $ Translate (-90) 120 (rectangleSolid 30 30),
			color brown $ Translate (-90) 150 (rectangleSolid 30 30),
			color bage $ Translate (-90) (-30) (rectangleSolid 30 30),
			color brown $ Translate (-90) (-60) (rectangleSolid 30 30),
			color brown $ Translate (-90) (-90) (rectangleSolid 30 30),
			color bage $ Translate (-90) (-120) (rectangleSolid 30 30),
			color bage $ Translate (-90) (-150) (rectangleSolid 30 30),
			color black $ Translate (-90) (-180) (rectangleSolid 30 30),
			color black $ Translate (-90) (-210) (rectangleSolid 30 30),
			color black $ Translate (-90) (-240) (rectangleSolid 30 30),

			--4 rows left from middle line
			color brown $ Translate (-120) 0 (rectangleSolid 30 30),
			color brown $ Translate (-120) 30 (rectangleSolid 30 30),
			color brown $ Translate (-120) 60 (rectangleSolid 30 30),
			color black $ Translate (-120) 90 (rectangleSolid 30 30),
			color brown $ Translate (-120) 120 (rectangleSolid 30 30),
			color brown $ Translate (-120) (-30) (rectangleSolid 30 30),
			color brown $ Translate (-120) (-60) (rectangleSolid 30 30),
			color brown $ Translate (-120) (-90) (rectangleSolid 30 30),
			color black $ Translate (-120) (-180) (rectangleSolid 30 30),
			color black $ Translate (-120) (-210) (rectangleSolid 30 30),
			
			--5 rows left from middle line
			color brown $ Translate (-150) 0 (rectangleSolid 30 30),
			color brown $ Translate (-150) 30 (rectangleSolid 30 30),
			color brown $ Translate (-150) 60 (rectangleSolid 30 30),
			color brown $ Translate (-150) 90 (rectangleSolid 30 30),
			color brown $ Translate (-150) (-30) (rectangleSolid 30 30),
			color brown $ Translate (-150) (-60) (rectangleSolid 30 30),
			color brown $ Translate (-150) (-90) (rectangleSolid 30 30),
		
			--6 rows left from middle line
			color brown $ Translate (-180) 0 (rectangleSolid 30 30),
			color brown $ Translate (-180) 30 (rectangleSolid 30 30),
			color brown $ Translate (-180) 60 (rectangleSolid 30 30),
			color brown $ Translate (-180) (-30) (rectangleSolid 30 30),
			color brown $ Translate (-180) (-60) (rectangleSolid 30 30),
			color brown $ Translate (-180) (-90) (rectangleSolid 30 30),

			--7 rows left from middle line
			color brown $ Translate (-210) 0 (rectangleSolid 30 30),
			color brown $ Translate (-210) (-30) (rectangleSolid 30 30),
			color brown $ Translate (-210) (-60) (rectangleSolid 30 30),
		
			--1 row to the right from middle line
			color brown $ Translate 30 0 (rectangleSolid 30 30),
			color black $ Translate 30 30 (rectangleSolid 30 30),
			color brown $ Translate 30 60 (rectangleSolid 30 30),
			color brown $ Translate 30 90 (rectangleSolid 30 30),
			color brown $ Translate 30 120 (rectangleSolid 30 30),
			color brown $ Translate 30 150 (rectangleSolid 30 30),
			color brown $ Translate 30 180 (rectangleSolid 30 30),
			color brown $ Translate 30 210 (rectangleSolid 30 30),
			color brown $ Translate 30 (-30) (rectangleSolid 30 30),
			color brown $ Translate 30 (-60) (rectangleSolid 30 30),
			color bage $ Translate 30 (-90) (rectangleSolid 30 30),
			color bage $ Translate 30 (-120) (rectangleSolid 30 30),
			color bage $ Translate 30 (-150) (rectangleSolid 30 30),
			color bage $ Translate 30 (-180) (rectangleSolid 30 30),
			color bage $ Translate 30 (-210) (rectangleSolid 30 30),
			
			--2 rows right from middle line
			color bage $ Translate 60 0 (rectangleSolid 30 30),
			color black $ Translate 60 30 (rectangleSolid 30 30),
			color brown $ Translate 60 60 (rectangleSolid 30 30),
			color brown $ Translate 60 90 (rectangleSolid 30 30),
			color brown $ Translate 60 120 (rectangleSolid 30 30),
			color brown $ Translate 60 150 (rectangleSolid 30 30),
			color brown $ Translate 60 180 (rectangleSolid 30 30),
			color brown $ Translate 60 210 (rectangleSolid 30 30),
			color bage $ Translate 60 (-30) (rectangleSolid 30 30),
			color brown $ Translate 60 (-60) (rectangleSolid 30 30),
			color bage $ Translate 60 (-90) (rectangleSolid 30 30),
			color bage $ Translate 60 (-120) (rectangleSolid 30 30),
			color bage $ Translate 60 (-150) (rectangleSolid 30 30),
			color bage $ Translate 60 (-180) (rectangleSolid 30 30),
			color black $ Translate 60 (-210) (rectangleSolid 30 30),
			color black $ Translate 60 (-240) (rectangleSolid 30 30),

			--3 rows right from middle line
			color black $ Translate 90 0 (rectangleSolid 30 30),
			color black $ Translate 90 30 (rectangleSolid 30 30),
			color black $ Translate 90 60 (rectangleSolid 30 30),
			color brown $ Translate 90 90 (rectangleSolid 30 30),
			color brown $ Translate 90 120 (rectangleSolid 30 30),
			color brown $ Translate 90 150 (rectangleSolid 30 30),
			color brown $ Translate 90 180 (rectangleSolid 30 30),
			color bage $ Translate 90 (-30) (rectangleSolid 30 30),
			color brown $ Translate 90 (-60) (rectangleSolid 30 30),
			color bage $ Translate 90 (-90) (rectangleSolid 30 30),
			color bage $ Translate 90 (-120) (rectangleSolid 30 30),
			color bage $ Translate 90 (-150) (rectangleSolid 30 30),
			color black $ Translate 90 (-180) (rectangleSolid 30 30),
			color black $ Translate 90 (-210) (rectangleSolid 30 30),
			color black $ Translate 90 (-240) (rectangleSolid 30 30),

			--4 rows right from middle line
			color bage $ Translate 120 0 (rectangleSolid 30 30),
			color bage $ Translate 120 30 (rectangleSolid 30 30),
			color bage $ Translate 120 60 (rectangleSolid 30 30),
			color black $ Translate 120 90 (rectangleSolid 30 30),
			color brown $ Translate 120 120 (rectangleSolid 30 30),
			color brown $ Translate 120 150 (rectangleSolid 30 30),
			color bage $ Translate 120 (-30) (rectangleSolid 30 30),
			color brown $ Translate 120 (-60) (rectangleSolid 30 30),
			color brown $ Translate 120 (-90) (rectangleSolid 30 30),
			color bage $ Translate 120 (-120) (rectangleSolid 30 30),
			color bage $ Translate 120 (-150) (rectangleSolid 30 30),
			color black $ Translate 120 (-180) (rectangleSolid 30 30),
			color black $ Translate 120 (-210) (rectangleSolid 30 30),
			color black $ Translate 120 (-240) (rectangleSolid 30 30),

			--5 rows right from middle line
			color brown $ Translate 150 0 (rectangleSolid 30 30),
			color brown $ Translate 150 30 (rectangleSolid 30 30),
			color brown $ Translate 150 60 (rectangleSolid 30 30),
			color black $ Translate 150 90 (rectangleSolid 30 30),
			color brown $ Translate 150 120 (rectangleSolid 30 30),
			color brown $ Translate 150 (-30) (rectangleSolid 30 30),
			color brown $ Translate 150 (-60) (rectangleSolid 30 30),
			color brown $ Translate 150 (-90) (rectangleSolid 30 30),
			color black $ Translate 150 (-150) (rectangleSolid 30 30),
			color black $ Translate 150 (-180) (rectangleSolid 30 30),
			color black $ Translate 150 (-210) (rectangleSolid 30 30),
			color black $ Translate 150 (-240) (rectangleSolid 30 30),
	
			--6 rows right from middle line
			color brown $ Translate 180 0 (rectangleSolid 30 30),
			color brown $ Translate 180 30 (rectangleSolid 30 30),
			color brown $ Translate 180 60 (rectangleSolid 30 30),
			color brown $ Translate 180 90 (rectangleSolid 30 30),
			color brown $ Translate 180 (-30) (rectangleSolid 30 30),
			color brown $ Translate 180 (-60) (rectangleSolid 30 30),
			color brown $ Translate 180 (-90) (rectangleSolid 30 30),
			color black $ Translate 180 (-150) (rectangleSolid 30 30),
			color black $ Translate 180 (-180) (rectangleSolid 30 30),
			color black $ Translate 180 (-210) (rectangleSolid 30 30),
			color black $ Translate 180 (-240) (rectangleSolid 30 30),

			--7 rows right from middle line
			color brown $ Translate 210 0 (rectangleSolid 30 30),
			color brown $ Translate 210 30 (rectangleSolid 30 30),
			color brown $ Translate 210 60 (rectangleSolid 30 30),
			color brown $ Translate 210 (-30) (rectangleSolid 30 30),
			color brown $ Translate 210 (-60) (rectangleSolid 30 30),
			color brown $ Translate 210 (-90) (rectangleSolid 30 30),
			color black $ Translate 210 (-180) (rectangleSolid 30 30),
			color black $ Translate 210 (-210) (rectangleSolid 30 30),
			
			--8 rows right from middle line
			color brown $ Translate 240 0 (rectangleSolid 30 30),
			color brown $ Translate 240 (-30) (rectangleSolid 30 30),
			color brown $ Translate 240 (-60) (rectangleSolid 30 30)
			]

brick :: Picture
brick = Pictures[
		--line 1 starting from the left
		color brown $ Translate 0 0 (rectangleSolid 10 10),
		color bage $ Translate 0 10 (rectangleSolid 10 10),
		color bage $ Translate 0 20 (rectangleSolid 10 10),
		color bage $ Translate 0 30 (rectangleSolid 10 10),
		color bage $ Translate 0 40 (rectangleSolid 10 10),
		color black $ Translate 0 50 (rectangleSolid 10 10),
		color bage $ Translate 0 60 (rectangleSolid 10 10),
		color bage $ Translate 0 70 (rectangleSolid 10 10),
		color bage $ Translate 0 80 (rectangleSolid 10 10),
		color bage $ Translate 0 90 (rectangleSolid 10 10),
		color bage $ Translate 0 100 (rectangleSolid 10 10),
		color bage $ Translate 0 110 (rectangleSolid 10 10),
		color bage $ Translate 0 120 (rectangleSolid 10 10),
		color bage $ Translate 0 130 (rectangleSolid 10 10),
		color bage $ Translate 0 140 (rectangleSolid 10 10),
		color brown $ Translate 0 150 (rectangleSolid 10 10),

		--line 2 starting from the left
		color black $ Translate 10 0 (rectangleSolid 10 10),
		color brown $ Translate 10 10 (rectangleSolid 10 10),
		color brown $ Translate 10 20 (rectangleSolid 10 10),
		color bage $ Translate 10 30 (rectangleSolid 10 10),
		color black $ Translate 10 40 (rectangleSolid 10 10),
		color brown $ Translate 10 50 (rectangleSolid 10 10),
		color brown $ Translate 10 60 (rectangleSolid 10 10),
		color brown $ Translate 10 70 (rectangleSolid 10 10),
		color brown $ Translate 10 80 (rectangleSolid 10 10),
		color brown $ Translate 10 90 (rectangleSolid 10 10),
		color brown $ Translate 10 100 (rectangleSolid 10 10),
		color brown $ Translate 10 110 (rectangleSolid 10 10),
		color brown $ Translate 10 120 (rectangleSolid 10 10),
		color brown $ Translate 10 130 (rectangleSolid 10 10),
		color brown $ Translate 10 140 (rectangleSolid 10 10),
		color bage $ Translate 10 150 (rectangleSolid 10 10),

		--line 3 starting from the left
		color black $ Translate 20 0 (rectangleSolid 10 10),
		color brown $ Translate 20 10 (rectangleSolid 10 10),
		color brown $ Translate 20 20 (rectangleSolid 10 10),
		color bage $ Translate 20 30 (rectangleSolid 10 10),
		color black $ Translate 20 40 (rectangleSolid 10 10),
		color brown $ Translate 20 50 (rectangleSolid 10 10),
		color brown $ Translate 20 60 (rectangleSolid 10 10),
		color brown $ Translate 20 70 (rectangleSolid 10 10),
		color brown $ Translate 20 80 (rectangleSolid 10 10),
		color brown $ Translate 20 90 (rectangleSolid 10 10),
		color brown $ Translate 20 100 (rectangleSolid 10 10),
		color brown $ Translate 20 110 (rectangleSolid 10 10),
		color brown $ Translate 20 120 (rectangleSolid 10 10),
		color brown $ Translate 20 130 (rectangleSolid 10 10),
		color brown $ Translate 20 140 (rectangleSolid 10 10),
		color bage $ Translate 20 150 (rectangleSolid 10 10),

		--line 4 starting from the left
		color black $ Translate 30 0 (rectangleSolid 10 10),
		color brown $ Translate 30 10 (rectangleSolid 10 10),
		color bage $ Translate 30 20 (rectangleSolid 10 10),
		color black $ Translate 30 30 (rectangleSolid 10 10),
		color brown $ Translate 30 40 (rectangleSolid 10 10),
		color brown $ Translate 30 50 (rectangleSolid 10 10),
		color brown $ Translate 30 60 (rectangleSolid 10 10),
		color brown $ Translate 30 70 (rectangleSolid 10 10),
		color brown $ Translate 30 80 (rectangleSolid 10 10),
		color brown $ Translate 30 90 (rectangleSolid 10 10),
		color brown $ Translate 30 100 (rectangleSolid 10 10),
		color brown $ Translate 30 110 (rectangleSolid 10 10),
		color brown $ Translate 30 120 (rectangleSolid 10 10),
		color brown $ Translate 30 130 (rectangleSolid 10 10),
		color brown $ Translate 30 140 (rectangleSolid 10 10),
		color bage $ Translate 30 150 (rectangleSolid 10 10),

		--line 5 starting from the left
		color black $ Translate 40 0 (rectangleSolid 10 10),
		color brown $ Translate 40 10 (rectangleSolid 10 10),
		color bage $ Translate 40 20 (rectangleSolid 10 10),
		color black $ Translate 40 30 (rectangleSolid 10 10),
		color brown $ Translate 40 40 (rectangleSolid 10 10),
		color brown $ Translate 40 50 (rectangleSolid 10 10),
		color brown $ Translate 40 60 (rectangleSolid 10 10),
		color brown $ Translate 40 70 (rectangleSolid 10 10),
		color brown $ Translate 40 80 (rectangleSolid 10 10),
		color brown $ Translate 40 90 (rectangleSolid 10 10),
		color brown $ Translate 40 100 (rectangleSolid 10 10),
		color brown $ Translate 40 110 (rectangleSolid 10 10),
		color brown $ Translate 40 120 (rectangleSolid 10 10),
		color brown $ Translate 40 130 (rectangleSolid 10 10),
		color brown $ Translate 40 140 (rectangleSolid 10 10),
		color bage $ Translate 40 150 (rectangleSolid 10 10),

		--line 6 starting from the left
		color black $ Translate 50 0 (rectangleSolid 10 10),
		color brown $ Translate 50 10 (rectangleSolid 10 10),
		color bage $ Translate 50 20 (rectangleSolid 10 10),
		color black $ Translate 50 30 (rectangleSolid 10 10),
		color brown $ Translate 50 40 (rectangleSolid 10 10),
		color brown $ Translate 50 50 (rectangleSolid 10 10),
		color brown $ Translate 50 60 (rectangleSolid 10 10),
		color brown $ Translate 50 70 (rectangleSolid 10 10),
		color brown $ Translate 50 80 (rectangleSolid 10 10),
		color brown $ Translate 50 90 (rectangleSolid 10 10),
		color brown $ Translate 50 100 (rectangleSolid 10 10),
		color brown $ Translate 50 110 (rectangleSolid 10 10),
		color brown $ Translate 50 120 (rectangleSolid 10 10),
		color brown $ Translate 50 130 (rectangleSolid 10 10),
		color brown $ Translate 50 140 (rectangleSolid 10 10),
		color bage $ Translate 50 150 (rectangleSolid 10 10),

		--line 7 starting from the left
		color black $ Translate 60 0 (rectangleSolid 10 10),
		color brown $ Translate 60 10 (rectangleSolid 10 10),
		color bage $ Translate 60 20 (rectangleSolid 10 10),
		color black $ Translate 60 30 (rectangleSolid 10 10),
		color brown $ Translate 60 40 (rectangleSolid 10 10),
		color brown $ Translate 60 50 (rectangleSolid 10 10),
		color brown $ Translate 60 60 (rectangleSolid 10 10),
		color brown $ Translate 60 70 (rectangleSolid 10 10),
		color brown $ Translate 60 80 (rectangleSolid 10 10),
		color brown $ Translate 60 90 (rectangleSolid 10 10),
		color brown $ Translate 60 100 (rectangleSolid 10 10),
		color brown $ Translate 60 110 (rectangleSolid 10 10),
		color brown $ Translate 60 120 (rectangleSolid 10 10),
		color brown $ Translate 60 130 (rectangleSolid 10 10),
		color brown $ Translate 60 140 (rectangleSolid 10 10),
		color bage $ Translate 60 150 (rectangleSolid 10 10),

		--line 8 starting from the left
		color brown $ Translate 70 0 (rectangleSolid 10 10),
		color black $ Translate 70 10 (rectangleSolid 10 10),
		color black $ Translate 70 20 (rectangleSolid 10 10),
		color black $ Translate 70 30 (rectangleSolid 10 10),
		color brown $ Translate 70 40 (rectangleSolid 10 10),
		color brown $ Translate 70 50 (rectangleSolid 10 10),
		color brown $ Translate 70 60 (rectangleSolid 10 10),
		color brown $ Translate 70 70 (rectangleSolid 10 10),
		color brown $ Translate 70 80 (rectangleSolid 10 10),
		color brown $ Translate 70 90 (rectangleSolid 10 10),
		color brown $ Translate 70 100 (rectangleSolid 10 10),
		color brown $ Translate 70 110 (rectangleSolid 10 10),
		color brown $ Translate 70 120 (rectangleSolid 10 10),
		color brown $ Translate 70 130 (rectangleSolid 10 10),
		color brown $ Translate 70 140 (rectangleSolid 10 10),
		color bage $ Translate 70 150 (rectangleSolid 10 10),

		--line 9 starting from the left
		color bage $ Translate 80 0 (rectangleSolid 10 10),
		color bage $ Translate 80 10 (rectangleSolid 10 10),
		color bage $ Translate 80 20 (rectangleSolid 10 10),
		color bage $ Translate 80 30 (rectangleSolid 10 10),
		color black $ Translate 80 40 (rectangleSolid 10 10),
		color black $ Translate 80 50 (rectangleSolid 10 10),
		color brown $ Translate 80 60 (rectangleSolid 10 10),
		color brown $ Translate 80 70 (rectangleSolid 10 10),
		color brown $ Translate 80 80 (rectangleSolid 10 10),
		color brown $ Translate 80 90 (rectangleSolid 10 10),
		color brown $ Translate 80 100 (rectangleSolid 10 10),
		color brown $ Translate 80 110 (rectangleSolid 10 10),
		color brown $ Translate 80 120 (rectangleSolid 10 10),
		color brown $ Translate 80 130 (rectangleSolid 10 10),
		color brown $ Translate 80 140 (rectangleSolid 10 10),
		color bage $ Translate 80 150 (rectangleSolid 10 10),

		--line 10 starting from the left
		color black $ Translate 90 0 (rectangleSolid 10 10),
		color brown $ Translate 90 10 (rectangleSolid 10 10),
		color brown $ Translate 90 20 (rectangleSolid 10 10),
		color brown $ Translate 90 30 (rectangleSolid 10 10),
		color bage $ Translate 90 40 (rectangleSolid 10 10),
		color bage $ Translate 90 50 (rectangleSolid 10 10),
		color black $ Translate 90 60 (rectangleSolid 10 10),
		color black $ Translate 90 70 (rectangleSolid 10 10),
		color black $ Translate 90 80 (rectangleSolid 10 10),
		color black $ Translate 90 90 (rectangleSolid 10 10),
		color black $ Translate 90 100 (rectangleSolid 10 10),
		color black $ Translate 90 110 (rectangleSolid 10 10),
		color black $ Translate 90 120 (rectangleSolid 10 10),
		color black $ Translate 90 130 (rectangleSolid 10 10),
		color black $ Translate 90 140 (rectangleSolid 10 10),
		color black $ Translate 90 150 (rectangleSolid 10 10),

		--line 11 starting from the left
		color black $ Translate 100 0 (rectangleSolid 10 10),
		color brown $ Translate 100 10 (rectangleSolid 10 10),
		color brown $ Translate 100 20 (rectangleSolid 10 10),
		color brown $ Translate 100 30 (rectangleSolid 10 10),
		color brown $ Translate 100 40 (rectangleSolid 10 10),
		color brown $ Translate 100 50 (rectangleSolid 10 10),
		color bage $ Translate 100 60 (rectangleSolid 10 10),
		color bage $ Translate 100 70 (rectangleSolid 10 10),
		color bage $ Translate 100 80 (rectangleSolid 10 10),
		color bage $ Translate 100 90 (rectangleSolid 10 10),
		color brown $ Translate 100 100 (rectangleSolid 10 10),
		color bage $ Translate 100 110 (rectangleSolid 10 10),
		color bage $ Translate 100 120 (rectangleSolid 10 10),
		color bage $ Translate 100 130 (rectangleSolid 10 10),
		color bage $ Translate 100 140 (rectangleSolid 10 10),
		color brown $ Translate 100 150 (rectangleSolid 10 10),

		--line 12 starting from the left
		color black $ Translate 110 0 (rectangleSolid 10 10),
		color brown $ Translate 110 10 (rectangleSolid 10 10),
		color brown $ Translate 110 20 (rectangleSolid 10 10),
		color brown $ Translate 110 30 (rectangleSolid 10 10),
		color brown $ Translate 110 40 (rectangleSolid 10 10),
		color brown $ Translate 110 50 (rectangleSolid 10 10),
		color brown $ Translate 110 60 (rectangleSolid 10 10),
		color brown $ Translate 110 70 (rectangleSolid 10 10),
		color brown $ Translate 110 80 (rectangleSolid 10 10),
		color bage $ Translate 110 90 (rectangleSolid 10 10),
		color black $ Translate 110 100 (rectangleSolid 10 10),
		color black $ Translate 110 110 (rectangleSolid 10 10),
		color brown $ Translate 110 120 (rectangleSolid 10 10),
		color brown $ Translate 110 130 (rectangleSolid 10 10),
		color brown $ Translate 110 140 (rectangleSolid 10 10),
		color bage $ Translate 110 150 (rectangleSolid 10 10),

		--line 13 starting from the left
		color black $ Translate 120 0 (rectangleSolid 10 10),
		color brown $ Translate 120 10 (rectangleSolid 10 10),
		color brown $ Translate 120 20 (rectangleSolid 10 10),
		color brown $ Translate 120 30 (rectangleSolid 10 10),
		color brown $ Translate 120 40 (rectangleSolid 10 10),
		color brown $ Translate 120 50 (rectangleSolid 10 10),
		color brown $ Translate 120 60 (rectangleSolid 10 10),
		color brown $ Translate 120 70 (rectangleSolid 10 10),
		color brown $ Translate 120 80 (rectangleSolid 10 10),
		color bage $ Translate 120 90 (rectangleSolid 10 10),
		color black $ Translate 120 100 (rectangleSolid 10 10),
		color brown $ Translate 120 110 (rectangleSolid 10 10),
		color brown $ Translate 120 120 (rectangleSolid 10 10),
		color brown $ Translate 120 130 (rectangleSolid 10 10),
		color brown $ Translate 120 140 (rectangleSolid 10 10),
		color bage $ Translate 120 150 (rectangleSolid 10 10),

		--line 14 starting from the left
		color black $ Translate 130 0 (rectangleSolid 10 10),
		color brown $ Translate 130 10 (rectangleSolid 10 10),
		color brown $ Translate 130 20 (rectangleSolid 10 10),
		color brown $ Translate 130 30 (rectangleSolid 10 10),
		color brown $ Translate 130 40 (rectangleSolid 10 10),
		color brown $ Translate 130 50 (rectangleSolid 10 10),
		color brown $ Translate 130 60 (rectangleSolid 10 10),
		color brown $ Translate 130 70 (rectangleSolid 10 10),
		color brown $ Translate 130 80 (rectangleSolid 10 10),
		color bage $ Translate 130 90 (rectangleSolid 10 10),
		color black $ Translate 130 100 (rectangleSolid 10 10),
		color brown $ Translate 130 110 (rectangleSolid 10 10),
		color brown $ Translate 130 120 (rectangleSolid 10 10),
		color brown $ Translate 130 130 (rectangleSolid 10 10),
		color brown $ Translate 130 140 (rectangleSolid 10 10),
		color bage $ Translate 130 150 (rectangleSolid 10 10),

		--line 15 starting from the left
		color black $ Translate 140 0 (rectangleSolid 10 10),
		color black $ Translate 140 10 (rectangleSolid 10 10),
		color brown $ Translate 140 20 (rectangleSolid 10 10),
		color brown $ Translate 140 30 (rectangleSolid 10 10),
		color brown $ Translate 140 40 (rectangleSolid 10 10),
		color brown $ Translate 140 50 (rectangleSolid 10 10),
		color brown $ Translate 140 60 (rectangleSolid 10 10),
		color brown $ Translate 140 70 (rectangleSolid 10 10),
		color brown $ Translate 140 80 (rectangleSolid 10 10),
		color bage $ Translate 140 90 (rectangleSolid 10 10),
		color black $ Translate 140 100 (rectangleSolid 10 10),
		color brown $ Translate 140 110 (rectangleSolid 10 10),
		color brown $ Translate 140 120 (rectangleSolid 10 10),
		color brown $ Translate 140 130 (rectangleSolid 10 10),
		color brown $ Translate 140 140 (rectangleSolid 10 10),
		color bage $ Translate 140 150 (rectangleSolid 10 10),

		--line 15 starting from the left
		color brown $ Translate 150 0 (rectangleSolid 10 10),
		color black $ Translate 150 10 (rectangleSolid 10 10),
		color black $ Translate 150 20 (rectangleSolid 10 10),
		color black $ Translate 150 30 (rectangleSolid 10 10),
		color black $ Translate 150 40 (rectangleSolid 10 10),
		color black $ Translate 150 50 (rectangleSolid 10 10),
		color black $ Translate 150 60 (rectangleSolid 10 10),
		color black $ Translate 150 70 (rectangleSolid 10 10),
		color black $ Translate 150 80 (rectangleSolid 10 10),
		color black $ Translate 150 90 (rectangleSolid 10 10),
		color brown $ Translate 150 100 (rectangleSolid 10 10),
		color black $ Translate 150 110 (rectangleSolid 10 10),
		color black $ Translate 150 120 (rectangleSolid 10 10),
		color black $ Translate 150 130 (rectangleSolid 10 10),
		color black $ Translate 150 140 (rectangleSolid 10 10),
		color black $ Translate 150 150 (rectangleSolid 10 10)
		]

mushroom :: Picture
mushroom = Pictures [ Translate (-100) (-130) (Color red (circleSolid 20)),
					 Translate (-100) (-141) (Color white (rectangleSolid 35 18)),
					 Translate (-90) (-120) (Color white (circleSolid 5)),
					 Translate (-110) (-125) (Color white (circleSolid 5)),
					 Translate (-107) (-112) (Color white (circleSolid 5)),
					 Translate (-107) (-137) (Color black (rectangleSolid 4 10)),
					 Translate (-95) (-137) (Color black (rectangleSolid 4 10)),
					 Translate (-100) (-141) (Color black (rectangleWire 35 18))
					]

questionMarkBox :: Picture 
questionMarkBox = Pictures [Translate 0 0 (Color (light $ orange) (rectangleSolid 100 100)),
							--Translate 1 3 (Color black (rectangleWire 102 104)),
					 		Translate 0 50 (Color orange (rectangleSolid 100 10)),
					 		Translate (-45) 0 (Color orange(rectangleSolid 10 100)),
					 		Translate (53) (0) (Color black (rectangleSolid 10 110)),
					 		Translate (0) (-50) (Color black (rectangleSolid 100 10)),
					 		Translate 35 30 (Color black (rectangleSolid 10 10)),
					 		Translate (-25) 30 (Color black (rectangleSolid 10 10)),
					 		Translate (-25) (-30) (Color black (rectangleSolid 10 10)),
					 		Translate 35 (-30) (Color black (rectangleSolid 10 10)),
					 		Translate (-5) (5) (Color black (rectangleSolid 10 10)),
					 		Translate (-5) (15) (Color black (rectangleSolid 10 10)),
					 		Translate (5) (15) (Color black (rectangleSolid 10 10)),
					 		Translate (15) (15) (Color black (rectangleSolid 10 10)),
					 		Translate (25) (10) (Color black (rectangleSolid 10 10)),
					 		Translate (25) (5) (Color black (rectangleSolid 10 10)),
					 		Translate (20) (-5) (Color black (rectangleSolid 10 10)),
					 		Translate (15) (-15) (Color black (rectangleSolid 10 10)),
					 		Translate (15) (-35) (Color black (rectangleSolid 10 10)),
					 		Translate (-10) 20 (Color orange (rectangleSolid 10 10)),
					 		Translate 20 20 (Color orange (rectangleSolid 10 10)),
					 		Translate 0 20 (Color orange (rectangleSolid 10 10)),
					 		Translate 10 20 (Color orange (rectangleSolid 10 10)),
					 		Translate 20 10 (Color orange (rectangleSolid 10 10)),
					 		Translate 15 0 (Color orange (rectangleSolid 10 10)),
					 		Translate 10 (-10) (Color orange (rectangleSolid 10 10)),
					 		Translate 10 (-30) (Color orange (rectangleSolid 10 10)),
					 		Translate (-10) 10 (Color orange (rectangleSolid 10 10))
					 		]

cloud :: Picture 
cloud = Pictures [Translate 0 0 (Color black (rectangleSolid 10 10)), -- 1st row 
				  Translate 10 0 (Color black (rectangleSolid 10 10)),
				  Translate 20 0 (Color black (rectangleSolid 10 10)),
				  Translate 30 0 (Color black (rectangleSolid 10 10)),
				  Translate 60 0 (Color black (rectangleSolid 10 10)),
				  Translate 70 0 (Color black (rectangleSolid 10 10)),
				  Translate 80 0 (Color black (rectangleSolid 10 10)),
				  Translate 90 0 (Color black (rectangleSolid 10 10)),
				  Translate (-10) (-10) (Color black (rectangleSolid 10 10)), -- 2nd row
				  Translate (40) (-10) (Color black (rectangleSolid 10 10)),
				  Translate (50) (-10) (Color black (rectangleSolid 10 10)),
				  Translate (100) (-10) (Color black (rectangleSolid 10 10)),
				  Translate (-20) (-20) (Color black (rectangleSolid 10 10)), -- 3rd row 
				  Translate (110) (-20) (Color black (rectangleSolid 10 10)),
				  Translate (-20) (-30) (Color black (rectangleSolid 10 10)),
				  Translate (110) (-30) (Color black (rectangleSolid 10 10)),
				  Translate (-20) (-40) (Color black (rectangleSolid 10 10)),  -- 4th row
				  Translate (110) (-40) (Color black (rectangleSolid 10 10)),  
				  Translate (-30) (-50) (Color black (rectangleSolid 10 10)), -- 5th row
				  Translate (110) (-50) (Color black (rectangleSolid 10 10)),
				  Translate (-30) (-60) (Color black (rectangleSolid 10 10)), -- 6th row
				  Translate (110) (-60) (Color black (rectangleSolid 10 10)),
				  Translate (-30) (-70) (Color black (rectangleSolid 10 10)), --7th row
				  Translate (120) (-70) (Color black (rectangleSolid 10 10)), 
				  Translate (-30) (-80) (Color black (rectangleSolid 10 10)), --8th row 
				  Translate (120) (-80) (Color black (rectangleSolid 10 10)),
				  Translate (-30) (-90) (Color black (rectangleSolid 10 10)), --9th row 
				  Translate (120) (-90) (Color black (rectangleSolid 10 10)),
				  Translate (100) (-90) (Color black (rectangleSolid 10 10)),  
				  Translate (-10) (-90) (Color black (rectangleSolid 10 10)),
				  Translate (120) (-100) (Color black (rectangleSolid 10 10)),    --10th row
				  Translate (-20) (-100) (Color black (rectangleSolid 10 10)),
				  Translate (120) (-110) (Color black (rectangleSolid 10 10)),  -- 11th row
				  Translate (-20) (-110) (Color black (rectangleSolid 10 10)),
				  Translate (120) (-120) (Color black (rectangleSolid 10 10)),  --12th row 
				  Translate (-20) (-120) (Color black (rectangleSolid 10 10)), 
				  Translate (-10) (-130) (Color black (rectangleSolid 10 10)),-- 13th row
				  Translate (40) (-130) (Color black (rectangleSolid 10 10)),
				  Translate (50) (-130) (Color black (rectangleSolid 10 10)), 
				  Translate (0) (-140) (Color black (rectangleSolid 10 10)), --14th row 
				  Translate (10) (-140) (Color black (rectangleSolid 10 10)), 
				  Translate (20) (-140) (Color black (rectangleSolid 10 10)),
				  Translate (30) (-140) (Color black (rectangleSolid 10 10)),
				  Translate (60) (-140) (Color black (rectangleSolid 10 10)),  
				  Translate (70) (-140) (Color black (rectangleSolid 10 10)),
				  Translate (80) (-140) (Color black (rectangleSolid 10 10)), 
				  Translate (90) (-140) (Color black (rectangleSolid 10 10)),
				  Translate (100) (-140) (Color black (rectangleSolid 10 10)),
				  Translate (110) (-130) (Color black (rectangleSolid 10 10)),
				  Translate (110) (-100) (Color black (rectangleSolid 10 10))   
				 ]

mario :: Picture 
mario = Pictures [Translate 60 10 (Color red (rectangleSolid 10 10)),--First row
				  	Translate 70 10 (Color red (rectangleSolid 10 10)),
				  	Translate 80 10 (Color red (rectangleSolid 10 10)),
				  	Translate 90 10 (Color red (rectangleSolid 10 10)),
			   	  	Translate 100 10 (Color red (rectangleSolid 10 10)),
				  	Translate 40 0 (Color red (rectangleSolid 10 10)),--second row 
				  	Translate 50 0 (Color red (rectangleSolid 10 10)),
				  	Translate 60 0 (Color red (rectangleSolid 10 10)),
				  	Translate 70 0 (Color red (rectangleSolid 10 10)),
				  	Translate 80 0 (Color red (rectangleSolid 10 10)),
				  	Translate 90 0 (Color red (rectangleSolid 10 10)),
					 Translate 100 0 (Color red (rectangleSolid 10 10)),
					 Translate 110 0 (Color red (rectangleSolid 10 10)),
					 Translate 120 0 (Color red (rectangleSolid 10 10)),
					 Translate 130 0 (Color red (rectangleSolid 10 10)),
					 Translate 50 (-10) (Color browncolor (rectangleSolid 10 10)),--third row
					 Translate 60 (-10) (Color browncolor (rectangleSolid 10 10)),
					 Translate 70 (-10) (Color browncolor (rectangleSolid 10 10)),
					 Translate 80 (-10) (Color skincolor (rectangleSolid 10 10)),
					 Translate 90 (-10) (Color skincolor (rectangleSolid 10 10)),
					 Translate 100 (-10) (Color black (rectangleSolid 10 10)),
					 Translate 110 (-10) (Color skincolor (rectangleSolid 10 10)),
					 Translate 40 (-20) (Color browncolor (rectangleSolid 10 10)),-- forth row
					 Translate 50 (-20) (Color skincolor  (rectangleSolid 10 10)),
					 Translate 60 (-20) (Color browncolor (rectangleSolid 10 10)),
					 Translate 70 (-20) (Color skincolor (rectangleSolid 10 10)),
					 Translate 80 (-20) (Color skincolor (rectangleSolid 10 10)),
					 Translate 90 (-20) (Color skincolor (rectangleSolid 10 10)),
					 Translate 100 (-20) (Color black (rectangleSolid 10 10)),
					 Translate 110 (-20) (Color skincolor (rectangleSolid 10 10)),
					 Translate 120 (-20) (Color skincolor (rectangleSolid 10 10)),
					 Translate 130 (-20) (Color skincolor (rectangleSolid 10 10)),
					 Translate 40 (-30) (Color browncolor (rectangleSolid 10 10)),--5th row
					 Translate 50 (-30) (Color skincolor (rectangleSolid 10 10)),
					 Translate 60 (-30) (Color browncolor (rectangleSolid 10 10)),
					 Translate 70 (-30) (Color browncolor (rectangleSolid 10 10)),
					 Translate 80 (-30) (Color skincolor (rectangleSolid 10 10)),
					 Translate 90 (-30) (Color skincolor (rectangleSolid 10 10)),
					 Translate 100 (-30) (Color skincolor (rectangleSolid 10 10)),
					 Translate 110 (-30) (Color black (rectangleSolid 10 10)),   
					 Translate 120 (-30) (Color skincolor (rectangleSolid 10 10)), 
					 Translate 130 (-30) (Color skincolor (rectangleSolid 10 10)),
					 Translate 140 (-30) (Color skincolor (rectangleSolid 10 10)),
					 Translate 50 (-40) (Color browncolor (rectangleSolid 10 10)),	--6th row
					 Translate 60 (-40) (Color skincolor (rectangleSolid 10 10)),
					 Translate 70 (-40) (Color skincolor (rectangleSolid 10 10)),
					 Translate 80 (-40) (Color skincolor (rectangleSolid 10 10)),
					 Translate 90 (-40) (Color skincolor (rectangleSolid 10 10)),
					 Translate 100 (-40) (Color black (rectangleSolid 10 10)),
					 Translate 110 (-40) (Color black (rectangleSolid 10 10)),
					 Translate 120 (-40) (Color black (rectangleSolid 10 10)),
					 Translate 130 (-40) (Color black (rectangleSolid 10 10)),
					 Translate 60 (-50) (Color skincolor (rectangleSolid 10 10)),--7th row
					 Translate 70 (-50) (Color skincolor (rectangleSolid 10 10)),
					 Translate 80 (-50) (Color skincolor (rectangleSolid 10 10)),
					 Translate 90 (-50) (Color skincolor (rectangleSolid 10 10)),
					 Translate 100 (-50) (Color skincolor (rectangleSolid 10 10)),
					 Translate 110 (-50) (Color skincolor (rectangleSolid 10 10)),
					 Translate 50 (-60) (Color red (rectangleSolid 10 10)),-- 8th row
					 Translate 60 (-60) (Color red (rectangleSolid 10 10)),
					 Translate 70 (-60) (Color blue (rectangleSolid 10 10)),
					 Translate 80 (-60) (Color red (rectangleSolid 10 10)),
					 Translate 90 (-60) (Color red (rectangleSolid 10 10)),
					 Translate 100 (-60) (Color blue (rectangleSolid 10 10)),
					 Translate 110 (-60) (Color red (rectangleSolid 10 10)),
					 Translate 120 (-60) (Color red (rectangleSolid 10 10)),
					 Translate 40 (-70) (Color red (rectangleSolid 10 10)),--9th row
					 Translate 50 (-70) (Color red (rectangleSolid 10 10)),
					 Translate 60 (-70) (Color red (rectangleSolid 10 10)),
					 Translate 70 (-70) (Color blue (rectangleSolid 10 10)),
					 Translate 80 (-70) (Color red (rectangleSolid 10 10)),
					 Translate 90 (-70) (Color red (rectangleSolid 10 10)),
					 Translate 100 (-70) (Color blue (rectangleSolid 10 10)),
					 Translate 110 (-70) (Color red (rectangleSolid 10 10)),   
					 Translate 120 (-70) (Color red (rectangleSolid 10 10)), 
					 Translate 130 (-70) (Color red (rectangleSolid 10 10)),
					 Translate 30 (-80) (Color red (rectangleSolid 10 10)),--10th row 
					 Translate 40 (-80) (Color red (rectangleSolid 10 10)),
					 Translate 50 (-80) (Color red (rectangleSolid 10 10)),
					 Translate 60 (-80) (Color red (rectangleSolid 10 10)),
					 Translate 70 (-80) (Color blue (rectangleSolid 10 10)),
					 Translate 80 (-80) (Color blue (rectangleSolid 10 10)),
					 Translate 90 (-80) (Color blue (rectangleSolid 10 10)),
					 Translate 100 (-80) (Color blue (rectangleSolid 10 10)),
					 Translate 110 (-80) (Color red (rectangleSolid 10 10)),
					 Translate 120 (-80) (Color red (rectangleSolid 10 10)),
					 Translate 130 (-80) (Color red (rectangleSolid 10 10)),
					 Translate 140 (-80) (Color red (rectangleSolid 10 10)),
					 Translate 30 (-90) (Color skincolor (rectangleSolid 10 10)),--11th row
					 Translate 40 (-90) (Color skincolor (rectangleSolid 10 10)),
					 Translate 50 (-90) (Color red (rectangleSolid 10 10)),
					 Translate 60 (-90) (Color blue (rectangleSolid 10 10)),
					 Translate 70 (-90) (Color orange (rectangleSolid 10 10)),
					 Translate 80 (-90) (Color blue (rectangleSolid 10 10)),
					 Translate 90 (-90) (Color blue (rectangleSolid 10 10)),
					 Translate 100 (-90) (Color orange (rectangleSolid 10 10)),
					 Translate 110 (-90) (Color blue (rectangleSolid 10 10)),
					 Translate 120 (-90) (Color red (rectangleSolid 10 10)),
					 Translate 130 (-90) (Color skincolor (rectangleSolid 10 10)),
					 Translate 140 (-90) (Color skincolor (rectangleSolid 10 10)),
					 Translate 30 (-100) (Color skincolor (rectangleSolid 10 10)),-- 12th row
					 Translate 40 (-100) (Color skincolor (rectangleSolid 10 10)),
					 Translate 50 (-100) (Color skincolor (rectangleSolid 10 10)),
					 Translate 60 (-100) (Color blue (rectangleSolid 10 10)),
					 Translate 70 (-100) (Color blue (rectangleSolid 10 10)),
					 Translate 80 (-100) (Color blue (rectangleSolid 10 10)),
					 Translate 90 (-100) (Color blue (rectangleSolid 10 10)),
					 Translate 100 (-100) (Color blue (rectangleSolid 10 10)),
					 Translate 110 (-100) (Color blue (rectangleSolid 10 10)),
					 Translate 120 (-100) (Color skincolor (rectangleSolid 10 10)),
					 Translate 130 (-100) (Color skincolor (rectangleSolid 10 10)),
					 Translate 140 (-100) (Color skincolor (rectangleSolid 10 10)),
					 Translate 50 (-110) (Color blue (rectangleSolid 10 10)),--13th row
					 Translate 60 (-110) (Color blue (rectangleSolid 10 10)),
					 Translate 70 (-110) (Color blue (rectangleSolid 10 10)),
					 Translate 100 (-110) (Color blue (rectangleSolid 10 10)),
					 Translate 110 (-110) (Color blue (rectangleSolid 10 10)),   
					 Translate 120 (-110) (Color blue (rectangleSolid 10 10)), 
					 Translate 40 (-120) (Color browncolor (rectangleSolid 10 10)),--14th row 
					 Translate 50 (-120) (Color browncolor (rectangleSolid 10 10)),
					 Translate 60 (-120) (Color browncolor (rectangleSolid 10 10)),
					 Translate 110 (-120) (Color browncolor (rectangleSolid 10 10)),
					 Translate 120 (-120) (Color browncolor (rectangleSolid 10 10)),
					 Translate 130 (-120) (Color browncolor (rectangleSolid 10 10)),
					 Translate 30 (-130) (Color browncolor (rectangleSolid 10 10)), --15th row
					 Translate 40 (-130) (Color browncolor (rectangleSolid 10 10)),
					 Translate 50 (-130) (Color browncolor (rectangleSolid 10 10)),
					 Translate 60 (-130) (Color browncolor (rectangleSolid 10 10)),
					 Translate 110 (-130) (Color browncolor (rectangleSolid 10 10)),
					 Translate 120 (-130) (Color browncolor (rectangleSolid 10 10)),
					 Translate 130 (-130) (Color browncolor (rectangleSolid 10 10)),
					 Translate 140 (-130) (Color browncolor (rectangleSolid 10 10))
				]








	