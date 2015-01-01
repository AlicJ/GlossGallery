
-- (c) 2014 Prakhar Jalan
-- Permission granted to distributed and modify, as long as this notice is preserved. Distributed without warranty.

-- This program is a short animation (40 second film) of a boy named Joe.  
---------------------------------------------------------------------------------------------------------------------------------
import Graphics.Gloss

main =  animate (InWindow "Short Film: Joe" (1025, 650) (20, 20))
                black
                picture
				

picture time 
	= Pictures [ Color (animateSkyColor time) $ rectangleSolid (10000)(10000)
				,animateSun time 
				,animateMoon time 
				,animateCloudP1 time 
				,animateCloudP2 time 
				,animateCloudP3 time 
				,animateCloudP4 time 
				,animateCloud2P1 time 
				,animateCloud2P2 time 
				,animateCloud2P3 time 
				,animateCloud2P4 time 
				,animateCloud3P1 time 
				,animateCloud3P2 time 
				,animateCloud3P3 time 
				,animateCloud3P4 time 
				,animateCloud4P1 time 
				,animateCloud4P2 time 
				,animateCloud4P3 time 
				,animateCloud4P4 time 
				,Translate (-200)(80) $ animateCloudP1 time 
				,Translate (-200)(80) $ animateCloudP2 time 
				,Translate (-200)(80) $ animateCloudP3 time 
				,Translate (-200)(80) $ animateCloudP4 time 
				,grass 
				,Translate (320)(-220) $ animateWaterP1 time 
				,Translate (410)(-140) $ animateWaterP2 time 
				,Translate (375)(-275) $ animateWaterP3 time 
				,Translate (355)(-205) $ animateWaterP4 time 
				,if (time <= 25 || time >= 35) then joeHead else Color black $ Text ""
				,if (time <= 25 || time >= 35) then Color hairColor $ joeHair else Color black $ Text ""
				,if (time <= 25 || time >= 35) then joeBody else Color black $ Text ""
				,if (time <= 25 || time >= 35) then joeNose else Color black $ Text ""
				,if (time <= 25 || time >= 35) then joeLeg1 else Color black $ Text ""
				,if (time <= 25 || time >= 35) then joeLeg2 else Color black $ Text ""
				,grassSpikes
				,if (time <= 25 || time >= 35) then Translate (-420)(18) $ animateBunnyEar1 time else Color black $ Text ""
				,if (time <= 25 || time >= 35) then Translate (-400)(20) $ animateBunnyEar2 time else Color black $ Text ""  
				,if (time <= 25 || time >= 35) then Translate (-410)(-9) $ bunnyHead else Color black $ Text "" 
				,if (time <= 25 || time >= 35) then Translate (-412)(-11) $ bunnyMouth else Color black $ Text ""
				,if (time <= 25 || time >= 35) then Translate (-405)(-11) $ Rotate 335 $ bunnyMouth else Color black $ Text ""
				,if (time <= 25 || time >= 35) then Translate (-405)(-7) $ bunnyEye else Color black $ Text ""
				,if (time <= 25 || time >= 35) then Translate (-413)(-7) $ bunnyEye else Color black $ Text ""
				,if (time <= 25 || time >= 35) then Translate (-403)(-26) $ bunnyFoot else Color black $ Text ""
				,if (time <= 25 || time >= 35) then Translate (-420)(-26) $ bunnyFoot else Color black $ Text ""
				,treeTrunk
				,Translate (-450)(-15) $ Scale 1.6 0.9 $ grassSpikes 
				,animateFullTree time 
				,if time <= 1 then animateZ1 time else Color black $ Text ""
				,if (time > 1 && time <= 2) then animateZ2 time else Color black $ Text ""
				,if (time > 2 && time <= 3) then animateZ3 time else Color black $ Text ""
				,if (time > 3 && time <= 4) then animateZ4 time else Color black $ Text ""
				,if (time > 4 && time <= 5 ) then animateZ5 time else Color black $ Text ""
				,if (time > 5 && time <= 25) then animateJoeEye1 time else Color black $ Text ""
				,if (time > 5 && time <= 25) then animateJoeEye2 time else Color black $ Text ""
				,if (time <= 5) then joeSleepEye1 else Color black $ Text ""
				,if (time <= 5) then joeSleepEye2 else Color black $ Text ""
				,if time < 5 then Translate (6)(55) $ animateYawn time else Color black $ Text ""
				,if (time > 5 && time < 7) then animateJoePupil1 time else Color black $ Text ""
				,if (time > 5 && time < 7) then animateJoePupil2 time else Color black $ Text ""
				,if (time >= 5 && time < 7) then neutralMouth else Color black $ Text ""
				,if (time < 7) then handNeutral1 else Color black $ Text ""
				,if (time <= 25 || time >= 35) then handNeutral2 else Color black $ Text ""
				,if (time >= 7 && time <= 25) then smile else Color black $ Text ""
				,if (time >= 7 && time < 16) then Translate (-2)(1) $ animateJoePupil1 time else Color black $ Text ""
				,if (time >= 7 && time < 16) then Translate (-2)(1) $ animateJoePupil2 time else Color black $ Text ""
				,if (time >= 7 && time <= 12) then animateJoeArm1 time else Color black $ Text ""
				,if (time >= 7 && time <= 12) then animateJoeHand1 time else Color black $ Text ""
				,if (time >= 7 && time <= 12) then joeWords else Color black $ Text "" 
				,if (time > 12 && time <= 16) then Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "Watch what I can do." else Color black $ Text ""
				,if (time > 12 && time <= 16) then handNeutral1 else Color black $ Text ""
				,if (time >= 16 && time <= 25) then Translate (-1)(3) $ animateJoePupil1 time else Color black $ Text ""
				,if (time >= 16 && time <= 25) then Translate (-1)(3) $ animateJoePupil2 time else Color black $ Text ""
				,if (time > 16 && time <= 25) then joeArm1 else Color black $ Text ""
				,if (time > 16 && time <= 25) then joeHand1 else Color black $ Text ""
				,if (time <= 16 || time >= 25) then floatingRock3 else Color black $ Text ""
				,if (time <= 25 || time >= 35) then floatingRock2 else Color black $ Text ""
				,if (time <= 25 || time >= 35) then floatingRock1 else Color black $ Text ""
				,if (time <= 25 || time >= 35) then floatingRock6 else Color black $ Text ""
				,if (time <= 25 || time >= 35) then floatingRock5 else Color black $ Text ""
				,if (time <= 25 || time >= 35) then floatingRock4 else Color black $ Text ""
				,if (time > 16 && time < 25) then animateFloatingRock3 time else Color black $ Text ""
				,if (time > 17 && time < 20.5) then Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "I'm using the force." else Color black $ Text ""
				,if (time >= 20.5 && time <= 23) then Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "Want to see MORE?!" else Color black $ Text ""
				,if (time >= 23 && time <= 25) then Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "Okay!" else Color black $ Text ""
				,if (time > 25 && time < 35) then flyJoe time else Color black $ Text "" -- FLY JOE 
				,if (time >= 28 && time <= 28.2) then lightning2 else Color black $ Text "" 
				,if (time >= 28.2 && time <= 28.5) then lightning else Color black $ Text "" 
				,if (time >= 28.5 && time <= 28.7) then lightning3 else Color black $ Text "" 
				,if (time >= 30 && time <= 30.2) then Translate (-10)(-10) $ lightning2 else Color black $ Text "" 
				,if (time >= 30.2 && time <= 30.4) then Translate (10)(-10) $ lightning else Color black $ Text "" 
				,if (time >= 30.4 && time <= 30.6) then Translate (-15)(5) $lightning3 else Color black $ Text ""
				,if (time >= 30.54 && time <= 30.8) then Translate (-25)(-13) $ lightning else Color black $ Text "" 
				,if (time >= 30.85 && time <= 31.1) then Translate (-20)(-8) $ lightning3 else Color black $ Text "" 
				,if (time >= 31.1 && time <= 31.3) then Translate (-30)(-10) $ lightning2 else Color black $ Text "" 
				,if (time >= 25 && time <= 35) then Color (animateHairColor time) $ joeHairMove time else Color black $ Text "" --SUPER SAIYAN 
				,if (time > 25 && time < 35) then animateBunny time else Color black $ Text ""
				,if (time > 25 && time < 35) then animateFloatingRock2 time else Color black $ Text ""
				,if (time > 25 && time < 35) then animateFloatingRock1 time else Color black $ Text ""
				,if (time > 25 && time < 35) then animateFloatingRock4 time else Color black $ Text ""
				,if (time > 25 && time < 35) then animateFloatingRock5 time else Color black $ Text ""
				,if (time > 25 && time < 35) then animateFloatingRock6 time else Color black $ Text ""
				,if (time > 26 && time < 35) then animatesparkA time else Color black $ Text "" --sparkA 
				,if (time > 27 && time < 35) then animatesparkB time else Color black $ Text "" --sparkB 
				,if (time > 28 && time < 35) then animatesparkC time  else Color black $ Text "" --sparkC 
				,if (time >= 29 && time <= 31.5) then Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "You don't think its cool?" else Color black $ Text ""				
				,if (time >= 35) then animateJoeEye1 time else Color black $ Text ""
				,if (time >= 35) then animateJoeEye2 time else Color black $ Text ""
				,if (time >= 35) then Translate (-1)(-1) $ animateJoePupil1 time else Color black $ Text ""
				,if (time >= 35) then Translate (-1)(-1) $ animateJoePupil2 time else Color black $ Text ""
				,if (time >= 35 && time <= 37) then neutralMouth else Color black $ Text "" 
				,if (time >= 35 && time <= 37) then Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "Fine..." else Color black $ Text ""
				,if (time > 37) then frown else Color black $ Text "" 
				,if (time > 37 && time < 39) then handNeutral2 else Color black $ Text ""
				,if (time >= 39) then Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "Bye..." else Color black $ Text ""
				,if (time >= 39) then animateJoeArm1 time else Color black $ Text ""
				,if (time >= 39) then animateJoeHand1 time else Color black $ Text "" 
				]
				
--------------------------------------------------------------------------------------------------------------------------------------------------------------
lightning = Translate (-150)(130) $ Rotate 205 $ Scale 2.4 4 $ Color yellow $ polygon [(3,25),(-5,10),(-2,6),(-6,-7),(-4,-10),(-4,-25),(-2,-15)]		
lightning2 = Translate (15)(75) $ Rotate 120 $ Scale 0.7 0.7 $ lightning	
lightning3 = Translate (15)(85) $ Rotate 340 $ Scale 0.5 0.5 $ lightning	

grassColor = mixColors 0.8 0.4 green blue 
grassSpikeColor = dark grassColor 
skinColor = mixColors 0.6 0.6 white orange
skyColor = light blue
colorDefault = mixColors 0.5 1 blue black 
animateSkyColor t = mixColors (0.5*sin(0.15*t) + 0.5) (0.5*cos(0.15*t) + 0.5) blue black 

animateHairColor t = mixColors (1 - (3*(0.1*(t - 24)))) ((3*(0.1*(t - 24)))) hairColor yellow 

hairColor = mixColors 1.4 0.8 red green

lightBlue = light blue 
shirtColor = mixColors 0.8 0.6 red black 
pantsColor = light black

moonColor = light skinColor
yawnColor = dark skinColor
treeColor = mixColors 0.6 0.175 green blue
treeTrunkColor = dark hairColor
waterColor = mixColors 0.2 1.4 white blue
bunnyEarColor = mixColors 1 0.04 white black
rockColor = greyN 0.30
rockColor2 = greyN 0.36
rockColor3 = greyN 0.33

cloudColorSet1 = mixColors 1.4 0.1 white orangeBlue
cloudColorSet2 = mixColors 1.7 0.3 white orangeBlue
cloudColorSet3 = mixColors 1.4 0.4 white orangeBlue
cloudColorSet4 = mixColors 1.4 0.2 white orangeBlue
orangeBlue = mixColors 0.6 0.5 black blue

joe = Pictures [joeHead, joeBody, joeNose, joeEye1 , joeEye2, Translate (-1)(4) $ joePupil1, Translate (-1)(4) $ joePupil2
				,joeLeg1, joeLeg2, joeArm1, joeHand1, Rotate 25 $ Translate (-8)(-7) $ handNeutral2, mouthOpen, mouthOpenOutline, joeFoot1, joeFoot2]	

flyJoe t = Translate (0)(50*sin(1.08*t))
		  $ joe
joeHairMove t = Translate (0)(50*sin(1.08*t))
		  $ joeHair

joeHead = Translate (0)(100) $ Scale 0.9 1 $ Color skinColor $ ThickCircle 30 60
joeHair = Translate (5)(130) $ Scale 1.03 1.22 $ polygon [(-54,7),(-57,0),(-45,-7),(-40,45),(-35,-8),(-30,20),(-25,-6),(-20,55),(-15,-6),(-10,65),(-5,-7),(0,3),(5,-8),(10,2),(15,-7),(20,55),(25,-6),(30,20),(35,-8),(40,45),(45,-10),(50,35),(55,-11),(58,5),(62,-20)]
joeBody = Translate (0)(7.5) $ Color shirtColor $ polygon [(0,31),(-20,35),(-30,10),(-30,-20),(30,-20),(30,10),(20,35)]
joeNose = Translate (9)(75) $ Scale 0.8 0.8 $ Color black $ line [(-6,8),(0,0),(-5,-4)]
joeEye1 = Translate (30)(90) $ Scale 0.9 1 $ Color white $ ThickCircle 4.5 9
joeEye2 = Translate (-30)(90) $ Scale 0.9 1 $ Color white $ ThickCircle 4.5 9
joeSleepEye1 = Translate (30)(90) $ Color black $ rectangleSolid 18 3 
joeSleepEye2 = Translate (-30)(90) $ Color black $ rectangleSolid 18 3 
joePupil1 = Translate (32)(88) $ Scale 0.8 1 $ Color black $ ThickCircle 2.5 5
joePupil2 = Translate (-28)(88) $ Scale 0.8 1 $ Color black $ ThickCircle 2.5 5 
joeLeg1 = Translate (-12)(-25) $ Color pantsColor $ rectangleSolid 18 25
joeLeg2 = Translate (12)(-25) $ Color pantsColor $ rectangleSolid 18 25
joeFoot1 = Translate (-12)(-35) $ Scale 1 1 $ Color black $ rectangleSolid 20 7
joeFoot2 = Translate (12)(-35) $ Scale 1 1 $ Color black $ rectangleSolid 20 7
joeArm1 = Translate (16)(17) $ Color skinColor $ polygon [(5,23),(13,5),(40,25),(35,30)]
joeHand1 = Translate (45)(40) $ Color skinColor $ polygon [(5,5),(10,20),(13,10),(16,13),(18,6),(21,7),(10,0),(10,5)]
handNeutral1 = Rotate 105 $ Translate (-35)(-10) $ Scale 0.7 0.7 $ Color skinColor $ polygon [(5,23),(13,5),(40,25),(35,30)] 
handNeutral2 = Rotate 105 $ Translate (-30)(-30) $ Scale 0.7 0.7 $ Color skinColor $ polygon [(5,23),(13,5),(40,25),(35,30)] 
joeWords = Translate (110)(100) $ Color white $ Scale 0.2 0.2 $ Text "Hi, my name is Joe."
neutralMouth = Translate (0)(55) $ Color black $ line [(-6,0),(6,0)]
smile = Translate (0)(70) $ Color black $ Scale 15 15 $ Arc 175 340 0.8 
frown = Translate (0)(50) $ Color black $ Scale 15 15 $ Arc 25 155 0.8 
yawnMouth = Color yawnColor $ ThickCircle 6 12
mouthOpen = Translate (0)(60) $ Color yawnColor $ Scale 0.6 0.9 $ ThickCircle 3 6
mouthOpenOutline = Translate (0)(60) $ Color black $ Scale 0.6 0.9 $ circle 6

treeTrunk = Translate (-450)(50) $ Color treeTrunkColor $ Scale 1 1 $ rectangleSolid 50 200 
moon = Color moonColor $ ThickCircle 15 30
sun = Color yellow $ ThickCircle 27 54
grass = Color grassColor $ polygon [(-800,-500),(-800,0),(800,-0),(800,-500)]
grassSpikes = Translate (0)(-36) $ Scale 1.2 1.2 $ Color grassSpikeColor $ polygon [(-20,-5),(-20,0),(-15,5),(-10,0),(-5,5),(0,0),(5,5),(10,0),(15,5),(20,0),(20,-5)]
rock = Scale 3.5 3.5 $ polygon [(-5.5,0),(-5,1),(-3,3),(1,5),(3,5),(6,2),(6.5,0.7)] 	

bunny = Pictures [Translate (-420)(18) $ bunnyEar1
				,Translate (-400)(20) $ bunnyEar2
				,Translate (-410)(-9) $ bunnyHead
				,Translate (-412)(-11) $ bunnyMouth
				,Translate (-405)(-11) $ Rotate 335 $ bunnyMouth
				,Translate (-405)(-7) $ bunnyEye
				,Translate (-413)(-7) $ bunnyEye
				,Translate (-403)(-26) $ bunnyFoot
				,Translate (-420)(-26) $ bunnyFoot
				]
				
animateBunny t = Translate (3*sin(4*t))(3*cos(4*t))
			 $ bunny

bunnyEar1 = Rotate 65 $ Color bunnyEarColor $ Scale 2.5 1 $ ThickCircle 4 8
bunnyEar2 = Rotate 100 $ Color bunnyEarColor $ Scale 2.5 1 $ ThickCircle 4 8
bunnyHead = Color white $ Scale 1 0.65 $ ThickCircle 10 20 
bunnyMouth = Color black $ Scale 5 5 $ Arc 175 340 0.8 
bunnyEye = Color black $ ThickCircle 0.7 1.4 
bunnyFoot = Color bunnyEarColor $ Scale 1.6 1 $ ThickCircle 3 6 

floatingRock1 = Color rockColor $ Translate (100)(-30) $ rock	
floatingRock2 = Color rockColor2 $ Translate (140)(-25) $ rock	
floatingRock3 = Color rockColor3 $ Translate (120)(-20) $ rock	

floatingRock4 = Color rockColor $ Translate (-120)(-50) $ rock	
floatingRock5 = Color rockColor2 $ Translate (-160)(-45) $ rock	
floatingRock6 = Color rockColor3 $ Translate (-140)(-40) $ rock

animateFloatingRock1 t = Translate (0)(45*sin(1.1*t) + 30)
				$ floatingRock1
animateFloatingRock2 t = Translate (0)(60*sin(1.5*t) + 25)
				$ floatingRock2			
animateFloatingRock3 t = Translate (0)(82*sin(1.3*t) + 20)
				$ floatingRock3
				
animateFloatingRock4 t = Translate (0)(55*sin(0.9*t) + 30)
				$ floatingRock4
animateFloatingRock5 t = Translate (0)(95*sin(1.2*t) + 25)
				$ floatingRock5			
animateFloatingRock6 t = Translate (0)(70*sin(1.6*t) + 20)
				$ floatingRock6				
				
sparkA = Color yellow $ Scale 11 11 $ Arc 25 155 0.8 	
sparkB = Color yellow $ Scale 11 11 $ Arc 25 155 0.8 
sparkC = Color yellow $ Scale 11 11 $ Arc 25 155 0.8 	
		
animateJoeEye1 t = Translate (3*sin(0.3*t))(3*sin(0.3*t))
			   $ joeEye1			   
animateJoeEye2 t = Translate (3*sin(0.3*t))(3*sin(0.3*t))
			   $ joeEye2
animateJoePupil1 t = Translate (3*sin(0.3*t))(3*sin(0.3*t))
			   $ joePupil1		   
animateJoePupil2 t = Translate (3*sin(0.3*t))(3*sin(0.3*t))
			   $ joePupil2
		   
animateJoeArm1 t = Rotate (3*sin(10*t))
			   $ joeArm1	
animateJoeHand1 t = Rotate (3*sin(10*t))
			   $ joeHand1

animateBunnyEar1 t = Rotate (6*sin(7*t))
			   $ Translate (0)(sin(5*t))
			   $ bunnyEar1	
animateBunnyEar2 t = Rotate (5*sin(7*t))
			   $ Translate (0)(cos(5*t))
			   $ bunnyEar2			   

animateYawn t = Scale (0.1*cos(2*t) + 0.3)(0.1*cos(2*t) + 0.3)
				$ yawnMouth
				
animateWaterP1 t = Scale (0.05*sin(0.7*t) + 0.95)(0.05*sin(0.7*t) + 0.95)
				$ waterP1
animateWaterP2 t = Scale (0.05*sin(0.7*t) + 0.95)(0.05*sin(0.7*t) + 0.95)
				$ waterP1
animateWaterP3 t = Scale (0.05*sin(0.7*t) + 0.95)(0.05*sin(0.7*t) + 0.95)
				$ waterP1
animateWaterP4 t = Scale (0.05*sin(0.7*t) + 0.95)(0.05*sin(0.7*t) + 0.95)
				$ waterP1
				
animateSun t = Translate (10*(50*cos(0.12*t))) (12*(25*sin(0.12*t)))
			$ sun

animateMoon t = Translate (12*(50*sin(0.09*t))) (-12*(25*cos(0.09*t)))
		    $ moon
			   			
animatesparkA t = Rotate (180*sin(1.2*(t-25)) + 50)
			    $ Translate (10*(30*sin(1.2*(t-25)))) (33*(25*cos(1.2*(t-25))))
 				$ sparkA	
animatesparkB t = Rotate (6*sin(1.2*(t-26)) + 50)
			    $ Translate (10*(30*cos(1.2*(t-26)))) (33*(25*sin(1.2*(t-26))))
				$ sparkB
animatesparkC t = Rotate (6*sin(1.2*(t-27)) + 50)
			    $ Translate (10*(30*sin(1.2*(t-27)))) (33*(25*cos(1.2*(t-27))))
				$ sparkC
				
z1 = Translate (140)(100) $ Color white $ Scale 0.2 0.2 $ Text "Z"
z2 = Translate (140)(100) $ Color white $ Scale 0.2 0.2 $ Text "Zz"
z3 = Translate (140)(100) $ Color white $ Scale 0.2 0.2 $ Text "Zzz"
z4 = Translate (140)(100) $ Color white $ Scale 0.2 0.2 $ Text "ZzzZ"
z5 = Translate (140)(100) $ Color white $ Scale 0.2 0.2 $ Text "ZzzZz"	
			
animateZ1 t = Rotate (360 - (5*t))
			$ z1
animateZ2 t = Rotate (360 - (5*t))
			$ z2
animateZ3 t = Rotate (360 - (5*t))
			$ z3
animateZ4 t = Rotate (360 - (5*t))
			$ z4
animateZ5 t = Rotate (360 - (5*t))
			$ z5			

fullTree = Pictures [tp1,tp2,tp3,tp4,tp5,tp6] 			
tp1 = treeTranslation $ Rotate 350 $ treeP1 
tp2 = treeTranslation $ Rotate 285 $ treeP2 
tp3 = treeTranslation $ Rotate 235 $ treeP3 
tp4 = treeTranslation $ Rotate 160 $ treeP4 
tp5 = treeTranslation $ Rotate 125 $ treeP5 
tp6 = treeTranslation $ Rotate 35 $ treeP6	
		
treeP1 = Color treeColor $ Scale 1.8 1 $ ThickCircle 35 70
treeP2 = Color treeColor $ Scale 1.8 1 $ ThickCircle 35 70
treeP3 = Color treeColor $ Scale 1.8 1 $ ThickCircle 35 70
treeP4 = Color treeColor $ Scale 1.8 1 $ ThickCircle 35 70
treeP5 = Color treeColor $ Scale 1.8 1 $ ThickCircle 35 70
treeP6 = Color treeColor $ Scale 1.8 1 $ ThickCircle 35 70
treeTranslation = Translate(-450)(200)

animateFullTree t = Translate (3*sin(0.5*t))(3*cos(0.5*t))
				$ fullTree

waterP1 = Color waterColor $ Rotate 4 $ Scale 1.8 0.9 $ ThickCircle 50 100
waterP2 = Color waterColor $ Rotate 0 $ Scale 2 0.7 $ ThickCircle 50 100
waterP3 = Color waterColor $ Scale 2 0.7 $ ThickCircle 70 140
waterP4 = Color waterColor $ Rotate 8 $ Scale 1.8 0.6 $ ThickCircle 50 100

cloudP1 = Translate(50)(215) $ Color cloudColorSet2 $ ThickCircle 30 50
cloudP2	= Translate(0)(215) $ Color cloudColorSet2 $ ThickCircle 12 40 
cloudP3 = Translate(50)(200) $ Color cloudColorSet2 $ ThickCircle 15 40 
cloudP4	= Translate(100)(215) $ Color cloudColorSet2 $ ThickCircle 12 40 

cloud2P1 = Translate(200)(235) $ Color cloudColorSet3 $ ThickCircle 30 50
cloud2P2 = Translate(150)(235) $ Color cloudColorSet3 $ ThickCircle 12 40 
cloud2P3 = Translate(200)(220) $ Color cloudColorSet3 $ ThickCircle 15 40 
cloud2P4 = Translate(250)(235) $ Color cloudColorSet3 $ ThickCircle 12 40 

cloud3P1 = Translate(-250)(265) $ Color cloudColorSet1 $ ThickCircle 30 50
cloud3P2 = Translate(-300)(265) $ Color cloudColorSet1 $ ThickCircle 12 40 
cloud3P3 = Translate(-250)(250) $ Color cloudColorSet1 $ ThickCircle 15 40 
cloud3P4 = Translate(-200)(265) $ Color cloudColorSet1 $ ThickCircle 12 40 	

cloud4P1 = Translate(-450)(275) $ Color cloudColorSet4 $ ThickCircle 30 50
cloud4P2 = Translate(-500)(275) $ Color cloudColorSet4 $ ThickCircle 12 40 
cloud4P3 = Translate(-450)(260) $ Color cloudColorSet4 $ ThickCircle 15 40 
cloud4P4 = Translate(-400)(275) $ Color cloudColorSet4 $ ThickCircle 12 40 	

animateCloudP1 t = Translate (550*cos(0.07*t))(0)
				$ cloudP1
animateCloudP2 t = Translate (550*cos(0.07*t))(0)
				$ cloudP2
animateCloudP3 t = Translate (550*cos(0.07*t))(0)
				$ cloudP3				
animateCloudP4 t = Translate (550*cos(0.07*t))(0)
				$ cloudP4

animateCloud2P1 t = Translate (500*sin(0.08*t))(0)
				$ cloud2P1
animateCloud2P2 t = Translate (500*sin(0.08*t))(0)
				$ cloud2P2
animateCloud2P3 t = Translate (500*sin(0.08*t))(0)
				$ cloud2P3				
animateCloud2P4 t = Translate (500*sin(0.08*t))(0)
				$ cloud2P4				
				
animateCloud3P1 t = Translate (550*sin(0.05*t))(0)
				$ cloud3P1
animateCloud3P2 t = Translate (550*sin(0.05*t))(0)
				$ cloud3P2
animateCloud3P3 t = Translate (550*sin(0.05*t))(0)
				$ cloud3P3				
animateCloud3P4 t = Translate (550*sin(0.05*t))(0)
				$ cloud3P4		
				
animateCloud4P1 t = Translate (500*sin(0.034*t))(0)
				$ cloud4P1
animateCloud4P2 t = Translate (500*sin(0.034*t))(0)
				$ cloud4P2
animateCloud4P3 t = Translate (500*sin(0.034*t))(0)
				$ cloud4P3				
animateCloud4P4 t = Translate (500*sin(0.034*t))(0)
				$ cloud4P4									