-- (c) 2014 Yao Xiao
-- Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.

import Graphics.Gloss

main =  animate (InWindow "Clock" (1000, 750) (20,  20))
                black
                picture


-- picture of whole clock
picture :: Float -> Picture	
picture time
	= Pictures [
               frame1 time
             , frame1 (time+0.25)
             , frame1 (time+0.5)
             , frame1 (time+0.75)
             , frame1 (time+1)
             , frame1 (time+1.25)
             , frame1 (time+1.50)
             , frame1 (time+1.75)
             , frame1 (time+2)
-- Green ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
             , frame2 time
             , frame2 (time+0.25)
             , frame2 (time+0.5)
             , frame2 (time+0.75)
             , frame2 (time+1)
             , frame2 (time+1.25)
             , frame2 (time+1.50)
             , frame2 (time+1.75)
             , frame2 (time+2)
-- Yellow ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
             , frame3 time
             , frame3 (time+0.25)
             , frame3 (time+0.50)
             , frame3 (time+0.75)
             , frame3 (time+1)
             , frame3 (time+1.25)
             , frame3 (time+1.50)
             , frame3 (time*(-1))
             , frame3 ((time+0.25)*(-1))
             , frame3 ((time+0.50)*(-1))
             , frame3 ((time+0.75)*(-1))
             , frame3 ((time+1)*(-1))
             , frame3 ((time+1.25)*(-1))
             , frame3 ((time+1.50)*(-1))
-- White ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
             , frame4 time
-- Hour ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
             , frame5 time
-- Minute ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
             , frame6 time
--Second ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
             , scale 0.5 0.5 (Translate (-480) (-30) (Color green( Text ( drop 3 "xxx9"))))
             , scale 0.5 0.5 (Translate (400) (-30) (Color green( Text ( drop 3 "xxx3"))))
             , scale 0.5 0.5 (Translate (-50) (380) (Color green( Text ( drop 3 "xxx12"))))
             , scale 0.5 0.5 (Translate (-30) (-480) (Color green( Text ( drop 3 "xxx6"))))
             ]

frame1 :: Float -> Picture
frame1 t = translate (350*sin(t))(350*cos(t)) (square1 t)

square1 :: Float -> Picture
square1 t = rotate (-1000*t) 
          $Color green 
          $rectangleWire  (40) (40)

frame2 :: Float -> Picture
frame2 t = translate (350*sin(-t))(350*cos(-t)) (square2 (-t))

square2 :: Float -> Picture
square2 t = rotate (-1000*t) 
          $Color yellow 
          $rectangleWire  (40) (40)

frame3 :: Float -> Picture
frame3 t = rotate (50*t) (square3 (t))

square3 :: Float -> Picture
square3 t =
           Color white 
          $rectangleWire  (500) (500)

frame4 :: Float -> Picture
frame4 t = translate (210*sin(t*(0.2/12)))(210*cos(t*(0.2/12))) (square4 t)

square4 :: Float -> Picture
square4 t = rotate (1000*t) 
          $Color yellow
          $thickCircle  (10) (10)

frame5 :: Float -> Picture
frame5 t = translate (210*sin(t*(0.2)))(210*cos(t*(0.2))) (square5 t)

square5 :: Float -> Picture
square5 t = rotate (1000*t) 
          $Color orange
          $thickCircle  (10) (10)

frame6 :: Float -> Picture
frame6 t = translate (210*sin(t*(12)))(210*cos(t*(12))) (square6 t)

square6 :: Float -> Picture
square6 t = 
           Color cyan 
          $thickCircle  (10) (10)

















