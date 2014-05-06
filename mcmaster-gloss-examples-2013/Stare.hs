-- (c) 2013 Mingfei Jiang
-- Permission granted to distributed and modify, as long as this notice is preserved.  Distributed without warrantee. 

module Main where
import Graphics.Gloss

main = animate (InWindow "Gloss" (700,700) (0,0))
           black picture

picture :: Float -> Picture
picture 0 = text "Value cannot be 0"
picture number = scale 6.5 6.5 (color rose $ drawpicture number)

orangered, orangered2, orangered3 :: Color -- define custom colours
orangered = makeColor 1.0 0.251 0.0 0.7
orangered2 = makeColor 1.0 0.251 0.0 0.5
orangered3 = makeColor 1.0 0.251 0.0 0.3

intervalsmall = [0,11.25,22.5,33.75,45,56.25,67.5,78.75] -- define intervals of rotation
intervalbig = [0,22.5,45,67.5,90,112.5,135,157.5,180,202.5,225,247.5,270,292.5,315,337.5]
xlist = [2,4..50] -- define the coordinates used to draw the outside grid
ylist = [0,2..48]

squares = pictures[rotate x (line [(-50,0),(0,50),(50,0),(0,-50),(-50,0)]) | x <- intervalsmall] --draws a square in the centre and rotate them every 11.25 degrees.
stars = pictures[rotate x ((pictures [line [(-8.5,0),(0,50),(8.5,0)],line[(0,50),(0,0)]])) | x <- intervalbig] --draws one side of the star and rotate every 22.5 degrees
grid = pictures[line [(0,y),(x,50)] | x <- xlist, y <- ylist, x-y==2] --draws one corner of the grid on the inside
insidegrid = pictures[
    translate 0 (-50) grid,
    rotate 90 (translate 0 (-50) grid),
    rotate 180 (translate 0 (-50) grid),
    rotate 270 (translate 0 (-50) grid)] --puts together the 4 sides to make a star

rotVal :: Float -> Float --rotate speeds (clockwise and counter clockwise)
rotVal x = x - (x / (0.01*pi))

rotVal1 :: Float -> Float
rotVal1 x = x - (x / (-0.01*pi))

drawpicture :: Float -> Picture
drawpicture number = pictures [
    rot $ color red (pictures [circle 50,circle 8.5]), -- draws the outside circle
    rot1 $ line [(-50,-50),(-50,50),(50,50),(50,-50),(-50,-50)], -- draws the outside box
    rot $ squares, -- draws inside squares circumscribed in each other
    rot1 $ scale 0.7 0.7 squares,
    rot1 $ scale 0.49 0.49 squares,
    rot1 $ scale 0.347 0.347 squares,
    rot1 $ scale 0.242 0.242 squares,
    rot $ color orange stars, --draws the stars, and 2 more smaller ones in the centre
    rot (color orange (scale 0.178 0.178 stars)),
    rot (rotate 11.25 (scale 0.178 0.178 stars)),
    rot1 $ translate (-50) 0 grid, --draws the outside grid using the inside grid corner
    rot1 $ rotate 90 (Translate (-50) 0 grid),
    rot1 $ rotate 180 (Translate (-50) 0 grid),
    rot1 $ rotate 270 (Translate (-50) 0 grid),
    rot $ color orangered insidegrid, --draws the inside grid and rotate it ever 22.5 degress
    rot $ color orangered2 (rotate 45 insidegrid),
    rot $ color orangered3 (rotate 22.5 insidegrid),
    rot $ color orangered3 (rotate 67.5 insidegrid)
    ]
  where rot = rotate (rotVal number)
        rot1 = rotate (rotVal1 number)