module Main where

--(c)  Mackenzie Campbell, Manaar Hyder and Maya Ramamurthy.  Permission is granted to distributed and modify this example, as long as this copyright statement is included

import Graphics.Gloss
import Graphics.Gloss.Data.Color


grey = greyN 0.4
grey1 = greyN 0.7
grey2 = greyN 0.8
grey3 = greyN 0.6
main = draw $
    (Pictures[      
        (color green(Polygon [(-410,-400),(-410,0),(410,0),(410,-400)])), -- grass
        Translate (-325) 300 (color yellow (ThickCircle 20 50)), -- moon
        Translate (-300) 325 (color black (ThickCircle 20 50)), -- moon shadow 
        (color yellow(Polygon[(-140,325),(-125,350),(-110,325)])), -- star 1 - 6pt
        (color yellow(Polygon[(-140,340),(-125,315),(-110,340)])), -- star 1 - 6pt
        (color yellow(Polygon[(340,125),(325,150),(310,125)])), -- star 2 - 6pt
        (color yellow(Polygon[(340,140),(325,115),(310,140)])), -- star 2 - 6pt
        (color cyan (Polygon [(-280,175),(-295,175),(-340,125),(-315,125)])), -- lightening bolt - 1st half 
        (color cyan (Polygon [(-340,125),(-315,125),(-250,95),(-265,95)])), -- lightening bolt - 2nd half 
        (color cyan (Polygon [(-250,95),(-265,95),(-350,10),(-350,10)])), -- lightening bolt - 3rd half 
        (color yellow(Polygon [(-355,-10),(-355,10),(-345,10),(-345,-10)])), -- pumpkin stem
        Translate (-300) 215 (color grey1 (ThickCircle 30 50)), -- cloud fluff 1
        Translate (-350) 215 (color grey1 (ThickCircle 12 40)), -- cloud fluff 2 -- left 
        Translate (-300) 200 (color grey1 (ThickCircle 15 40)), -- cloud fluff 3 -- donut hole filling 
        Translate (-250) 215 (color grey1 (ThickCircle 12 40)), -- cloud fluff 4 -- right
        Translate (300) 325 (color grey1 (ThickCircle 10 50)), -- skull head 
        (color black(Polygon [(273,282),(327,282),(327,302),(273,302)])), -- skull head cut off
        (color grey1(Polygon [(275,287),(325,287),(325,302),(275,302)])), -- skull teeth 
        Translate (283) 325 (color black (ThickCircle 3 20)), -- skull eye
        Translate (317) 325 (color black (ThickCircle 3 20)), -- skull eye 
        Translate (305) 300 (color black (ThickCircle 1 5)), -- skull nostril 
        Translate (295) 300 (color black (ThickCircle 1 5)), -- skull nostril
        (color grey1(Polygon [(275,270),(325,270),(325,280),(275,280)])), -- skull lower jaw
        Translate (200) 325 (color grey1 (ThickCircle 10 50)), -- smoke plume
        Translate (122) 315 (color grey1 (ThickCircle 10 40)), -- smoke plume 
        Translate (162) 335 (color grey1 (ThickCircle 10 20)), -- smoke plume 
        Translate (160) 305 (color grey1 (ThickCircle 5 20)), -- smoke plume 
        Translate (233) 300 (color grey1 (ThickCircle 5 20)), -- smoke plume 
        Translate (240) 335 (color grey1 (ThickCircle 5 20)), -- smoke plume 
        Translate (-240) 350 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (-210) 300 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (-270) 50 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (-370) 100 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (90) 350 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (240) 250 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (360) 350 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (360) 200 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (240) 50 (color yellow (ThickCircle 2 5)), -- simple star
        Translate (-240) 150 (color yellow (ThickCircle 2 5)), -- simple star
        (color red (Polygon [(200,200),(200,-200),(-200,-200),(-200,200)])), -- base of house
        (color grey(Polygon[(-200,200),(0,350),(200,200)])), -- roof of house
        Translate 0 270(color black (ThickCircle 8 50)),--attic circle
        (color black (Polygon [(-33,210),(-33,270),(33,270),(33,210)])),--attic square
        Translate 0 270(color yellow (ThickCircle 8 46)),--attic circle lit
        (color yellow (Polygon [(-31,212),(-31,268),(31,268),(31,212)])),--attic square lit
        (color grey (Polygon [(100,200),(100,290),(150,290),(150,200)])),--chimney
        (color magenta (Polygon [(50,50),(50,150),(150,150),(150,50)])),--window
        (color magenta (Polygon [(-50,50),(-50,150),(-150,150),(-150,50)])),--window
        (color black (Polygon [(-70,-180),(-70,30),(70,30),(70,-180)])),--door
        Translate 50 (-100) (color cyan (ThickCircle 0.5 20)),--doorknob
        (color violet (Polygon [(-40,-70),(-40,10),(40,10),(40,-70)])),--door window
        (color black (Polygon [(50,50),(50,98),(98,98),(98,50)])),--bottom left square
        (color black (Polygon [(102,50),(102,98),(150,98),(150,50)])),--bottom right  square
        (color black (Polygon [(102,102),(102,150),(150,150),(150,102)])),--top right square 
        (color black (Polygon [(50,102),(50,150),(98,150),(98,102)])),--top left square
        (color black (Polygon [(-50,50),(-50,98),(-98,98),(-98,50)])),--bottom left square
        (color black (Polygon [(-102,50),(-102,98),(-150,98),(-150,50)])),--bottom right  square
        (color black (Polygon [(-102,102),(-102,150),(-150,150),(-150,102)])),--top right square 
        (color black (Polygon [(-50,102),(-50,150),(-98,150),(-98,102)])),--top left square
        (color orange (Polygon [(-2,212),(3,212),(3,301),(-2,301)])),--vertical line attic
        (color orange (Polygon [(-31,248),(31,248),(31,252),(-31,252)])),--horizontal line attic 
        (color violet (Polygon [(50,50),(50,54),(150,54),(150,50)])),--window pane bottom
        (color violet (Polygon [(50,50),(50,150),(54,150),(54,50)])),--window pane left
        (color violet (Polygon [(146,50),(146,150),(150,150),(150,50)])),--window pane right
        (color violet (Polygon [(50,146),(50,150),(150,150),(150,146)])),--window pane top
        (color violet (Polygon [(-50,50),(-50,54),(-150,54),(-150,50)])),--window pane bottom
        (color violet (Polygon [(-50,50),(-50,150),(-54,150),(-54,50)])),--window pane left
        (color violet (Polygon [(-146,50),(-146,150),(-150,150),(-150,50)])),--window pane right
        (color violet (Polygon [(-50,146),(-50,150),(-150,150),(-150,146)])),--window pane top
        (color grey(Polygon [(-75,-400),(-50,-200),(50,-200),(75,-400)])), -- path
        (color grey2 (Polygon [(-70,-200),(-70,-180),(70,-180),(70,-200)])),--topest step
        (color grey3 (Polygon [(-90,-220),(-90,-200),(90,-200),(90,-220)])),--other step
        (color azure (Polygon [(-40,-70),(-40,-30),(-40,-30),(-10,-70)])),--bottom left curtain
        (color azure (Polygon [(-40,-30),(-40,10),(-10,10),(-40,10)])),--top left curtain
        (color azure (Polygon [(10,10),(40,10),(40,-30),(10,10)])),--top right curtain
        (color azure (Polygon [(10,-70),(40,-70),(40,-30),(10,-70)])),--bottom right curtain
        (color yellow(Polygon [(-355,-10),(-355,10),(-345,10),(-345,-10)])), -- pumpkin stem
        Translate (-350) (-50) (color orange (ThickCircle 20 50)), -- pumpkin
        Translate (-350) (-50) (color black (Circle 45)), -- pumpkin
        Translate (-350) (-50) (color black (ThickCircle 10 40)), -- pumpkin mouth 1 orange
        Translate (-350) (-50) (color yellow (ThickCircle 10 35)), -- pumpkin mouth 1 yellow
        Translate (-350) (-48) (color black (ThickCircle 10 35)), -- pumpkin mouth 1 black
        Translate (-350) (-43) (color orange (ThickCircle 10 40)), -- pumpkin mouth 2 orange
        (color black (Polygon [(-340,-40),(-330,-25),(-320,-40)])), -- pumpkin eye right
        (color yellow (Polygon [(-336,-38),(-330,-27),(-324,-38)])), -- pumpkin eye right yellow
        (color black (Polygon [(-380,-40),(-370,-25),(-360,-40)])), -- pumpkin eye left
        (color yellow (Polygon [(-376,-38),(-370,-27),(-364,-38)])), -- pumpkin eye left yellow
        (color black (Polygon [(-355,-50),(-350,-60),(-345,-50)])), -- pumpkin nose
        (color yellow (Polygon [(-353,-51),(-350,-57),(-347,-51)])), -- pumpkin nose yellow
        (color grey(Polygon [(-400,-250),(-400,-175),(-325,-175),(-325,-250)])), -- gravestone1
        Translate (-363) (-185) (color grey (ThickCircle 16 45)), -- gravestone1
        (color grey(Polygon [(-250,-250),(-250,-175),(-175,-175),(-175,-250)])), -- gravestone2
        Translate (-213) (-185) (color grey (ThickCircle 16 45)), -- gravestone2
        (color grey(Polygon [(-330,-150),(-330,-75),(-255,-75),(-255,-150)])), -- gravestone3
        Translate (-293) (-85) (color grey (ThickCircle 16 45)), -- gravestone3
        (color grey(Polygon [(400,-250),(400,-175),(325,-175),(325,-250)])), -- gravestone4
        Translate (363) (-185) (color grey (ThickCircle 16 45)), -- gravestone4
        (color grey(Polygon [(250,-250),(250,-175),(175,-175),(175,-250)])), -- gravestone5
        Translate (213) (-185) (color grey (ThickCircle 16 45)), -- gravestone5
        (color grey(Polygon [(330,-150),(330,-75),(255,-75),(255,-150)])), -- gravestone6
        Translate (293) (-85) (color grey (ThickCircle 16 45)), -- gravestone6      
         Translate (-320) (-100) $ Scale 0.3 0.3 $ Text "RIP", -- RIP 1
         Translate (-390) (-200) $ Scale 0.3 0.3 $ Text "RIP", -- RIP 2
         Translate (-240) (-200) $ Scale 0.3 0.3 $ Text "RIP", -- RIP 3
         Translate (260) (-100) $ Scale 0.3 0.3 $ Text "RIP", -- RIP 4
         Translate (340) (-200) $ Scale 0.3 0.3 $ Text "RIP", -- RIP 5
         Translate (190) (-200) $ Scale 0.3 0.3 $ Text "RIP", -- RIP 6
        (color black(Polygon[(-400,-400),(-400,-150),(-393,-125), (-385,-150), (-385,-400)])),--fence 1
        (color black(Polygon[(-350,-400),(-350,-150),(-343,-125), (-335,-150), (-335,-400)])),--fence 2
        (color black(Polygon[(-300,-400),(-300,-150),(-293,-125), (-285,-150), (-285,-400)])),--fence 3
        (color black(Polygon[(-250,-400),(-250,-150),(-243,-125), (-235,-150), (-235,-400)])),--fence 4
        (color black(Polygon[(-200,-400),(-200,-150),(-193,-125), (-185,-150), (-185,-400)])),--fence 5
        (color black(Polygon[(-150,-400),(-150,-150),(-143,-125), (-135,-150), (-135,-400)])),--fence 6
        (color black(Polygon[(-100,-400),(-100,-150),(-93,-125), (-85,-150), (-85,-400)])),--fence 7
        (color black(Polygon[(100,-400),(100,-150),(108,-125), (115,-150), (115,-400)])),--fence 8
        (color black(Polygon[(150,-400),(150,-150),(158,-125), (165,-150), (165,-400)])),--fence 9
        (color black(Polygon[(200,-400),(200,-150),(208,-125), (215,-150), (215,-400)])),--fence 10
        (color black(Polygon[(250,-400),(250,-150),(258,-125), (265,-150), (265,-400)])),--fence 11
        (color black(Polygon[(300,-400),(300,-150),(308,-125), (315,-150), (315,-400)])),--fence 12
        (color black(Polygon[(350,-400),(350,-150),(358,-125), (365,-150), (365,-400)])),--fence 13
        (color black(Polygon[(400,-400),(400,-150),(408,-125), (415,-150), (415,-400)])),--fence 14     
        (color black(Polygon [(-400,-330),(-400,-315),(-100,-315),(-100,-330)])), -- fence 15
        (color black(Polygon [(100,-330),(100,-315),(400,-315),(400,-330)])), -- fence 16
        (color black(Polygon [(-400,-230),(-400,-215),(-100,-215),(-100,-230)])), -- fence 17
        (color black(Polygon [(100,-230),(100,-215),(400,-215),(400,-230)])), -- fence 18
        (color black(Polygon [(-261,-155),(-257,-135),(-253,-155)])), -- grass spike 1- outline
        (color green(Polygon [(-259,-155),(-257,-136),(-255,-155)])), -- grass spike 1 
        (color black(Polygon [(-253,-155),(-250,-135),(-247,-155)])), -- grass spike 2 - outline
        (color green(Polygon [(-251,-155),(-250,-136),(-249,-155)])) -- grass spike 2
        ]
    )
--colours: azure, bright, chartreuse, cyan, dark, dim, green, greyN, rose, light, magenta, orange, blue, black, red, green, yellow
draw = display
    (InWindow "Haunted House" (810,750)(10,10)) black