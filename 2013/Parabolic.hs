module Main where
import Graphics.Gloss

{-

(c) 2013 Zichen Jiang, Yi Wang
Permission granted to distribute and modify, as long as this notice is preserved. Distributed without warrantee.

The program creates sets of lines and rotates two sets of them.

For the lines on the sides, here is an example on the left bottom set of the lines. 
The program first draw a line from the point with coordinates (0,MaxY) to the point 
with coordinates (0 + interval, 0), then draw the second line from (0, MaxY - interval) 
to (0 + 2*interval, 0), and then draw the third line from (0, MaxY - 2*interval) to 
(0 + 3*interval, 0), and so forth.

The sets of lines located at the center shares the same principle with the sets on 
the sides, but with opposite x and y value.

-}

winX=600
winY=600
winHalfX=300--div winX 2
winHalfY=300--div winY 2

main = animateIt

animateIt = animate
    (InWindow "Gloss Project - Parabolic lines - A&J Production" (600,600) (10,10))
    black
    frame
        
drawCent = display
    (InWindow "Gloss Project - Parabolic lines - A&J Production" (600,600) (10,10))
        white
    $ Pictures $ (calcParaCent 50)

drawSide = display
    (InWindow "Parabolic lines" (600,600) (10,10))
    white
    $ Pictures $ calcParaSide 50
        
frame :: Float -> Picture
frame time = Pictures $ 
            {-[color white (Rotate (time/3600 * pi) $ Pictures $ calcParaCent 24)] ++  --hour arm
            [color white (Rotate (time/60 * pi) $ Pictures $ calcParaCent 30)] ++  --minute arm
            [color white (Rotate (time/1 * pi) $ Pictures $ calcParaCent 48)] ++  --second arm-}
            [color white (Rotate (time * 4 * pi) $ Pictures $ calcParaCent 50)] ++
            [color white (Rotate (time * 6 * pi) $ Pictures $ calcParaCent 30)] ++
            [color white ( Pictures $ calcParaSide 50)]
            
            
calcParaSide m = parabolicSide m m 
calcParaCent m = parabolicCenter m m 

--drawParabolic m = Pictures calcParabolic m

--Parabolics from the sides
parabolicSide n m
    | n == (-1) = []
    | n > (-1) = 
            --quadrant 3 starting pointing is at top left corner, draw lines to the bottom side from left to right
            [line [(-winHalfX, winHalfY-n*stepy),(-winHalfX+stepx*n, -winHalfY)]] ++
            --quadrant 2 starting point is at bottom right corner, draw lines to the top side from right to left
            [line [(winHalfX, (-winHalfY)+n*stepy),(winHalfX-stepx*n, winHalfY)]] ++
            --quadrant 1 starting point is at bottom left corner, draw lines to the top side from left to right
            [line [(-winHalfX, (-winHalfY)+n*stepy),((-winHalfX)+stepx*n, winHalfY)]] ++
            --quadrant 4 starting point is at top right corner, draw lines to the bottom side from right to left
            [line [(winHalfX, winHalfY-n*stepy),(winHalfX-stepx*n, -winHalfY)]] ++
            (parabolicSide (n-1) m)
                where 
                    stepx=winX / m
                    stepy=winY / m

--Parabolics from the center
parabolicCenter n m
    | n == (m/2-1) = []
    | (n >= (m/2)) = 
            --quadrant 3 starting pointing is at most negative x axis, draw lines to the negative y axis from top to bottom
            [line [(n*stepx - 2*winHalfX,0),(0, winHalfY - stepy*n)]] ++
            --quadrant 2 starting point is at bottom right corner, draw lines to the top side from right to left
            [line [(n*stepx - 2*winHalfX,0),(0, stepy*n - winHalfY)]] ++
            --quadrant 1 starting point is at bottom left corner, draw lines to the top side from left to right
            [line [(2*winHalfX - n*stepx,0),(0, stepy*n - winHalfY)]] ++
            --quadrant 4 starting point is at top right corner, draw lines to the bottom side from right to left
            [line [(2*winHalfX - n*stepx,0),(0, winHalfY - stepy*n)]] ++
            (parabolicCenter (n-1) m)
                where 
                    stepx=winX / m
                    stepy=winY / m
