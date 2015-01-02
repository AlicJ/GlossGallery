-- © 2014 Nicolas Tristani
-- Permission granted to distribute, use or modify this code, as long as this notice is preserved.

import Graphics.Gloss

main = animate (InWindow "Gloss" (1000,450) (10,10))
               (greyN 0.2) --white
			   picturea

picturea time = pictures [picture time, drawTime time]

picture time
  = Pictures [circ time,  circ2 time, small1 time, small2 time, small3 time, small4 time, small5 time, small6 time]


circ time = pictures [rotate (90*time) (yinyang time)]


yinyang time = Pictures [
      translate (0) (0)(rotate (90*time) (color white (circleSolid (138)))),
      translate (0) (0)(rotate (90*time) (Circle (138))),
      translate (0) (0)(rotate (90) (arcSolid 180 360 138)),
      translate (0) (-69)(rotate (90) (circleSolid 69)),
      translate (0) (-69)(color white(circleSolid (33))),
      translate (0) (69)(rotate (90) (color white(arcSolid 180 360 69))),
      translate (0) (69)(circleSolid (33))]
	  
circ2 time = pictures [(rotate (90*time) (translate (0) (69)(color white(circleSolid (33)))))]

small1 time = pictures [rotate (90*time) (translate (0) (69) (scale 0.25 0.25 (rotate (-190*time) (yinyang time))))]
small2 time = pictures [rotate (90*time) (translate (0) (-69) (scale 0.25 0.25 (rotate (-190*time) (yinyang time))))]
small3 time = pictures [(translate (250) (100) (rotate (-90*time) (translate (0) (-69) (scale 0.25 0.25 (rotate (-190*time) (yinyang time))))))]
small4 time = pictures [(translate (-250) (-100) (rotate (90*time) (translate (0) (-69) (scale 0.25 0.25 (rotate (190*time) (yinyang time))))))]
small5 time = pictures [(translate (-250) (100) (rotate (90*time) (translate (0) (-69) (scale 0.25 0.25 (rotate (190*time) (yinyang time))))))]
small6 time = pictures [(translate (250) (-100) (rotate (-90*time) (translate (0) (-69) (scale 0.25 0.25 (rotate (-190*time) (yinyang time))))))]
    
drawTime time = translate (-175) (-210)
              $ (scale 0.2 0.2) 
              $ color (makeColor (0.5 + 0.5*sin time) 0 (0.5 + 0.5 *sin time) 1)
              $ text $ show time ++ " Seconds have passed"

