-- (c) 2014 Jonathan Boulanger
-- Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.

import Graphics.Gloss

main	
 = animate 
        (InWindow
	       "CpuSimulation" 	 -- window title
		(800, 600) 	 -- window size
		(10, 10)) 	 -- window position
	white		     -- background color (The background cannot be of variable color, therefore a rectangle of variable color will be drawn over the white background)
	frame			 -- picture to display

frame time = Pictures [		
		color (pictureColor time True) (rectangleSolid 2000 1000) -- Background
		, color (pictureColor time False) $ rotate (50 * time) (drawList (pointList (iterations) 0 (divisor time) (multiplier time) radius 0 (accuracy (multiplier time)))) ] -- Design

-- These are the parameters of the function defining the design
iterations = 4

multiplier time = if (((floor((multiplierBase time) / bound)) `mod` 2) == 0)
				  then ((multiplierBase time) - (floorFloat((multiplierBase time) / bound)) * bound) * (flipSign (time / (pi)))
				  else ((bound - ((multiplierBase time) - (floorFloat((multiplierBase time) / bound)) * bound)) * (flipSign (time / (pi))))
multiplierBase time = (floorFloat (time / (2 * pi)))
bound = 5

divisor time = abs(3*sin(time))
radius = 200
accuracy complexity = if (abs(complexity) > 4) -- When the complexity of the design is above 4, more points are required to create an accurate image 
				 then 0.01
				 else 0.02

-- Used to modify the speed of the animation
modifiedTime :: Float -> Float
modifiedTime time = time


-- Draws a list of points
drawList :: [Point] -> Picture
drawList [] = emptyPicture
drawList ((x , y) : xs) = Pictures [ 
						line ([(x , y)] ++ [nextPointInList (x, y) xs])
						, drawList xs ]


-- Returns the next point in a list of points
nextPointInList :: Point -> [Point] -> Point
nextPointInList (x, y) [] = (x + 1, y + 1) 
nextPointInList (x0, y0) ((x, y) : xs) = (x, y)
-- Draws a list of points
{-drawList :: [Point] -> Picture
drawList [] = emptyPicture
drawList ((x , y) : xs) = Pictures [ 
						Translate (x) (y) $ circleSolid 2
						, drawList xs ] -}
-- Creates a list of points from the functionPoint function
pointList :: Float -> Float -> Float -> Float -> Float -> Float -> Float -> [Point]
pointList k n d m r t a = if (t < (2 * pi))
						  then [(functionPoint k n d m r t a)] ++ pointList k n d m r (t + a) a
						  else [functionPoint k n d m r t a]
-- Returns a point based on given inputs (Point is formatted as single element list)
functionPoint :: Float -> Float -> Float -> Float -> Float -> Float -> Float -> Point
functionPoint k n d m r t a = if (n == (k - 1))
							  then (((r / (d ** n)) + (r / (d ** (n + 1)))) * cos((m ** n) * t) , ((r / (d ** n)) + (r / (d ** (n + 1)))) * sin((m ** n) * t))
							  else (((r / (d ** n)) + (r / (d ** (n + 1)))) * cos((m ** n) * t) , ((r / (d ** n)) + (r / (d ** (n + 1)))) * sin((m ** n) * t)) `addPoint` functionPoint k (n + 1) d m r t a 
-- An empty picture
emptyPicture :: Picture
emptyPicture = Text "" 

--Function that adds points
addPoint :: Point -> Point -> Point
addPoint (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
-- Function for background and point colour
pictureColor :: Float -> Bool -> Color
pictureColor time (True) = makeColor (0.5 - 0.5*sin(time)) (sin(time/8)) (0.5 + 0.5*sin(time)) (0.75)
pictureColor time (False) = makeColor (0.5 + 0.5*sin(time)) (0) (0.5 - 0.5*sin(time)) (1)
-- Haskell is very "interesting" when it comes to types, because of this, the following function is required to floor floating point numbers
floorFloat :: Float -> Float
floorFloat n = fromIntegral (floor n)
-- This flips the sign of a floating point number
flipSign :: Float -> Float
flipSign n = if ((floor n) `mod` 2 == 0)
			 then -1
			 else 1