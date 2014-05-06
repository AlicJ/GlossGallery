-- © 2013 Yash Patel, Chinthujan Nandakumar 
-- Permission granted to distribute, use or modify this code, as long as this notice is preserved.

module Main where

import Graphics.Gloss

main    = animate (InWindow "Assignment" (800, 600) (10, 10))
                  (greyN 0.2) frame

frame time = Scale 0.8 0.8
           $ animation time 6 -- # of rectangles = # + 1
    
    
animation t 0  = part0 -- if t 0 then 1 rectangle (main rectangle)
animation t d        -- if t > 0 then more than 1 rectangle
 = Pictures
    [ part0
    ,Translate 0 (100) 
        $ Scale 0.8 0.8 
        $ Rotate (t * 5)
        $ animation (t * 1.5) (d - 1),
        
    part1                         --part1 
    ,Translate (0) (-100) 
        $ Scale 0.8 0.8 
        $ Rotate (t * 5) 
        $ animation (t * 1.5) (d - 1)
    ]
    
part0   = Pictures
        [  Color (makeColor 1.0 0.0 0.0 0.8) $ rectangleUpperSolid 400 10 ]
        
part1   = Pictures
        [  Color (makeColor 0.0 0.0 1.0 0.8) $ rectangleUpperSolid 400 10 ]

part2   = Pictures
        [  Color (makeColor 1.0 0.0 0.0 0.8) $ rectangleUpperSolid 400 10 ]
        
part3   = Pictures
        [  Color (makeColor 0.0 0.0 1.0 0.8) $ rectangleUpperSolid 400 10 ]     