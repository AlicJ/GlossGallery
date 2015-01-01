module Main where

{----------------------------------------------------------------------
(c) 2013 Sergio Cosman Agraz
Permission granted to distributed and modify.   Distributed without warrantee.

Instructions

Create ocean waves (animation)

Type on GHCi:               main
to execute the waves.
-----------------------------------------------------------------------}

import Graphics.Gloss

-- Begin Color Palette

wave :: Color
wave = makeColor 0.3 0.3 1.0 1.0

waveEdge :: Color
waveEdge = makeColor 0.0 0.0 1.0 0.5

sky :: Color
sky = makeColor 0.1 0.1 0.2 1.0

moon :: Color 
moon = makeColor 0.8 0.9 0.5 1.0

crater :: Color
crater = makeColor 0.5 0.7 0.3 1.0

-- End Color Palette

main :: IO ()
main = animate (InWindow "Wave" (700,600) (10,100)) (sky) frame
 
-- Produce one frame of the animation

frame :: Float -> Picture
frame timeS
 = Pictures
        -- the moon
        [ Translate (-150)  150     luna
        --wave
        , Translate 0 (-150) $ waveMotion 5 timeS 
        ]
        
-- The moon craters, outline, and the water (in respect to the moon`s position).
luna :: Picture
luna
 = Pictures 
            --Moon
            [ Color moon                $ thickCircle 50 100
            , Color white               $ circle 100    
            , Translate 0 0             $ Color crater      $ thickCircle 10 20
            , Translate (-10) (-35)     $ Color crater      $ ThickCircle 5 15  
            , Translate 50 (-45)        $ Color crater      $ thickCircle 10 30
            , Translate (-5) 65         $ Color crater      $ thickCircle 10 30
            , Translate (60) 25         $ Color crater      $ thickCircle 10 30
            , Translate (-60) 0         $ Color crater      $ thickCircle 10 30
            -- Water
            , Translate 50 (-550)       $ Color wave        $ rectangleSolid 1000 500
            ]
            
-- The wave motion:

waveMotion :: Int -> Float -> Picture
waveMotion 0 timeS = Blank
waveMotion n timeS
 = Pictures
        [ Color wave            $ thickCircle 20 210
        , Color waveEdge        $ thickCircle 0  210
        
        , Translate 200 (-30)   $ Rotate (150 * sin timeS / (fromIntegral n) )
                                $ Scale 0.9 0.9
                                $ waveMotion (n-1) timeS
        
        , Translate (-200) (-30)    $ Rotate  (-20 * cos timeS / (fromIntegral n))
                                    $ Scale   0.8 0.8
                                    $ waveMotion (n-1) timeS        
        ]
