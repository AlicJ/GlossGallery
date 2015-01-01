---------

--(c) 2013 Ahmed Khan, MATTHEW PRIOR-COXHEAD    
--Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warrantee

---------

module Main where

import Graphics.Gloss

--define the main function
main :: IO ()
--creates a window with the name create moving star, which is 650 by 450 pixels big and positions 0 by 0 on the screen, which is on the top left
main 
 =  animate (InWindow "create moving star" (650, 450) (0, 0))
                (greyN 0.1)
        frame

--the frame function takes a float and returns a the picture which is displayed at that given time
-- the float represents the amount of time that has passed since thes start of the animation 
--the frame function calls the function getFracs for each individual rectangle on the screan
--the getFracs returns a list of objects, which are all the particles
frame :: Float -> Picture
frame timeS
 = Pictures (getFracs timeS)
 
 
 -- these varibles effect the circular  pattern behavior 
bigR :: Float
bigR = 80.0
r :: Float
r = 20.0
p :: Float
p = 158.0

--this function takes an int and returns a color
differentColors :: Int -> Color
differentColors 0 = makeColor 0.0 1.0 0.0 0.9
differentColors 1 = makeColor 0.0 0.0 1.0 0.9
differentColors 2 = makeColor 1.0 0.0 0.0 0.9

-- draws the rectangle, and calls the differentColors function for the color
-- the int for the color is determined by dividing the time by three and returning its remainder into the function. 
-- makes makes it so each object changes color ofter 3 seconds
drawRectangle timeS = Color (differentColors (mod (round (timeS*0.98)) 3)) $ rectangleUpperSolid 5 10
 
--this function calls itself until the time variable is lower then 0
--this function draws each individual particle using the spiroFrac function
getFracs timeS = if timeS > 0 then [spiroFrac 1 timeS] ++ getFracs (timeS-0.2) else [] -- gets a series of rectanlges


--This function makes the fractal
spiroFrac :: Int -> Float -> Picture
spiroFrac n timeS -- this actually generates the fractal
 =  let x = ((r+bigR)*cos(timeS + 3*pi/2)) + (r*cos(((timeS)*bigR)/(r) + 3*pi/2));
        y = ((r+bigR)*(sin(timeS + pi/2))) + (r*sin(((timeS)*bigR)/(r) - pi/4));
        rotatedImage = Rotate (-atan(y/x)*180/pi) (drawRectangle timeS)
        in Pictures [Translate x y (rotatedImage)] 
--so the spiroFrac actually detirmines the position and rotation of all the particles. 
--The basis of all this equation is to create a circle with the radius of the inner area of the star. 
--then create another circle on top of that circle rolling around it. This is known as a spiro
--but what this does is create a line straight through the circle as time passes as the circle is rolling around the big circle
 