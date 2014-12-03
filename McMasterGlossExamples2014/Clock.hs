{- 
(c) 2014  Xiaoxu Sun, Anqi Gu, Chaoyi Kuang
Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.
-}


import Graphics.Gloss
import System.Time

main = do
 ct <- getClockTime
 tz <- get_timezone ct
 animate 
   (InWindow "Clock" (650,650) (0,0))
   azure                  -- background color
   (picture ct tz)       -- picture to display

picture ct tz time
 = Pictures [drawClock ct tz time,
             face time
 ]

-- Get current local time zone diff in hours                   
get_timezone :: ClockTime -> IO Int
get_timezone ct = do cal <- toCalendarTime ct
                     return ((ctTZ cal) `div` 3600)
drawClock :: ClockTime -> Int -> Float -> Picture
drawClock ct tz td = Translate (-300) (-25) $ Color white $ Scale 0.25 0.5 $ picture
               where
                 picture = pictures [Text $ show  ct']
                 ct' = addToClockTime (TimeDiff	0 0 0 tz 300 sec 0) ct
                 (sec, subsec) = properFraction td

-- color
sillyFizz = makeColor8 185 238 208 255
merryCranesbill = makeColor8 247 96 109 255
bewitchedTree = makeColor8 30 196 174 255
lightHeartBlue = makeColor8 169 240 234 255
lawn = makeColor8 124 252 0 190
newBlack = makeColor8 0 0 0 150
newOrange = makeColor8 253 130 46 240
mintGreen = makeColor8 90 213 196 255


face td = Pictures [
               Rotate (5*td* pi)(Color sillyFizz  (ThickArc 0 359 80 10)),
               Rotate (10*td* pi) (Color white  (ThickArc 0 30 110 10)),
               Rotate (12*td*pi) (Color merryCranesbill  (ThickArc 0 (50*(td) * pi) 130 5)),
               Rotate (25*td*pi) (Color yellow  (ThickArc 0 (50*(td) * pi) 140 10)),
               Rotate (20*td*pi) (Color bewitchedTree  (ThickArc 0 (50*(td) * pi) 150 3)),
               Rotate (td* pi) (Color lightHeartBlue  (ThickArc 0 300 160 10)),
               Rotate (30*td* pi) (Color lawn  (ThickArc 0 180 180 15)),
               Color newBlack (thickCircle 200 20),
               Rotate (30*td* pi) (Translate (-325) (-325)(Color newOrange  (ThickArc 0 359.9 225 50))),
               Rotate (30*td* pi) (Translate (325) (325)(Color mintGreen  (ThickArc 0 (359.9) 225 50)))
               ]


                 

