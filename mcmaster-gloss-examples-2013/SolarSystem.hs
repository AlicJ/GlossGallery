{- 
(c) 2013  Trevor Rae, Paul Warnick, James Zhu, Katrine Rachitsky
Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.
-}

module Main where 
import Graphics.Gloss

----------------------------------------------------------------------------------------------------

sun :: Color -- Colours the Sun
sun = makeColor 1.0 0.7 0.0 0.7

mercury :: Color -- Colours each planet properly
mercury = makeColor 1.0 1.0 1.0 0.7

venus :: Color
venus = makeColor 1.0 0.5 0.2 0.7

earth :: Color
earth = makeColor 0.1 0.9 0.4 0.7

mars :: Color
mars = makeColor 1.0 0.1 0.1 0.7

jupiter :: Color
jupiter = makeColor 0.7 0.5 0.2 0.7

saturn :: Color
saturn = makeColor 0.7 0.4 0.1 0.7

uranus :: Color
uranus = makeColor 0.0 0.9 0.8 0.7

neptune :: Color
neptune = makeColor 0.1 0.1 0.9 0.7

pluto :: Color
pluto = makeColor 1.0 1.0 1.0 0.7

----------------------------------------------------------------------------------------------------

main = solar

solar = draw $ \t -> Pictures $ -- when "solar" is typed into ghci the picture is drawn using the "animate" function
    [
        Translate (-423) 373 $ Color white $ ThickCircle 0 2, -- all of this is just the stars for effect
        Translate (-245) 456 $ Color white $ ThickCircle 0 2,
        Translate (-503) 283 $ Color white $ ThickCircle 0 2,
        Translate (-234) 443 $ Color white $ ThickCircle 0 2,
        Translate (-150) 253 $ Color white $ ThickCircle 0 2,
        Translate (-320) 412 $ Color white $ ThickCircle 0 2,
        Translate (-650) 125 $ Color white $ ThickCircle 0 2,
        Translate (-450) 342 $ Color white $ ThickCircle 0 2,
        Translate (-350) 212 $ Color white $ ThickCircle 0 2,
        Translate 220 (-342) $ Color white $ ThickCircle 0 2,
        Translate 284 (-423) $ Color white $ ThickCircle 0 2,
        Translate 385 (-231) $ Color white $ ThickCircle 0 2,
        Translate 544 (-230) $ Color white $ ThickCircle 0 2,
        Translate 364 (-420) $ Color white $ ThickCircle 0 2,
        Translate 634 (-234) $ Color white $ ThickCircle 0 2,
        Translate 273 (-435) $ Color white $ ThickCircle 0 2,
        Translate 253 (-342) $ Color white $ ThickCircle 0 2,
        Translate 345 (-213) $ Color white $ ThickCircle 0 2,
        Translate 745 (-123) $ Color white $ ThickCircle 0 2,
        Translate (-823) (-423) $ Color white $ ThickCircle 0 2,
        Translate (-820) (-232) $ Color white $ ThickCircle 0 2,
        Translate (-923) (-343) $ Color white $ ThickCircle 0 2,
        Translate (-723) (-234) $ Color white $ ThickCircle 0 2,
        Translate (-753) (-123) $ Color white $ ThickCircle 0 2,
        Translate (-173) (-123) $ Color white $ ThickCircle 0 2,
        Translate (-586) (-432) $ Color white $ ThickCircle 0 2,
        Translate (-834) (-321) $ Color white $ ThickCircle 0 2,
        Translate (-283) (-234) $ Color white $ ThickCircle 0 2,
        Translate (-345) (-234) $ Color white $ ThickCircle 0 2,
        Translate (-384) (-434) $ Color white $ ThickCircle 0 2,
        Translate (-856) (-321) $ Color white $ ThickCircle 0 2,
        Translate (-384) (-423) $ Color white $ ThickCircle 0 2,
        Translate 856 232 $ Color white $ ThickCircle 0 2,
        Translate 834 324 $ Color white $ ThickCircle 0 2,
        Translate 934 342 $ Color white $ ThickCircle 0 2,
        Translate 263 432 $ Color white $ ThickCircle 0 2,
        Translate 342 324 $ Color white $ ThickCircle 0 2,
        Translate 564 234 $ Color white $ ThickCircle 0 2,
        Translate 435 231 $ Color white $ ThickCircle 0 2,
        Translate 765 234 $ Color white $ ThickCircle 0 2,
        Translate 123 234 $ Color white $ ThickCircle 0 2,
        
----------------------------------------------------------------------------------------------------
        
        planet 100 5 (t) sun, -- here each planet is put in the picture with the names, it uses the planet radius, orbit from the centre, t measures the speed of orbit and the last part is the colour
        names 5 (t) white "Sun", -- this does the same as above but with the name 
        planet 10 75  (t*1.6) mercury ,
        names 75 (t*1.6) white "Mercury",
        planet 25 100 (-t*1.18) venus,
        names 100 (-t*1.18) white "Venus",
        planet 17 115 (t) earth,
        names 115 (t) white "Earth",
        planet 13 130 (t*0.8) mars,
        names 130 (t*0.8) white "Mars",
        planet 100 250(t*0.4) jupiter,
        names 250 (t*0.4) white "Jupiter",
        planet 80 350 (t*0.3) saturn,
        names 350 (t*0.3) white "Saturn",
        planet 65 450 (-t*0.2) uranus,
        names 450 (-t*0.2) white "Uranus",
        planet 70 520 (t*0.18) neptune,
        names 520 (t*0.18) white "Neptune",
        planet 10 600 (t*0.15) pluto,
        names 600 (t*0.15) white "Pluto"
    ] 
            
----------------------------------------------------------------------------------------------------

planet planetRadius orbitalRadius theta col =  -- determines what happens when "planet" is used
    Pictures 
    [
        Color white $ Circle orbitalRadius, Translate (orbitalRadius * sin theta) (orbitalRadius * cos theta) $ Color col $ ThickCircle 0 planetRadius -- colours a circle white, and translates a thick circle around it 
    ]
    
----------------------------------------------------------------------------------------------------
    
names orbitalRadius theta col name = -- same as above but with the names, also rotates the names around the planets
    Pictures
    [
        Translate (orbitalRadius * sin theta) (orbitalRadius * cos theta) $ Scale 0.1 0.1 $ Rotate (orbitalRadius * sin theta) $ Color white $ Text (show name) 
    ]
            
----------------------------------------------------------------------------------------------------
            
draw = animate -- opens the program in a seperate window named "Solar System"
        (InWindow
                "Solar System" (1900, 1000) (0,0))
            black