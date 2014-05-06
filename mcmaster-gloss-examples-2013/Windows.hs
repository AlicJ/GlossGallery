--Author: Chang Liu,Xiaomin Bai, Yu Wang
import Graphics.Gloss
--setup colors over time
mRed time= makeColor8 255 102 0 (180+(round $ 75 * (sin time)**2))
mGreen time= makeColor8 51 204 51 (180+(round $ 75 * (sin time)**2))
mBlue time= makeColor8 51 153 255 (180+(round $ 75 * (sin time)**2))
mYellow time= makeColor8 255 255 51 (180+(round $ 75 * (sin time)**2))
--shapes over time
square = Polygon [(-50,50),(50,50),(50,-50),(-50,-50)]
circ time= ThickCircle (5*(cos ((pi/3)*time))) (10*(cos((pi/3)*time)))
--loading
pre = \time ->
	Pictures[
		--bubble moving around and come to middle
		Color (mBlue time) (Translate ((-55) * (cos (pi+(time/4)*4*pi/9))) (50+(55 * (sin ((3*pi/2) + (time/4)*13*pi/18)))) (circ time)),
		Color (mRed time) (Translate ((-55) * (cos (pi+(time/4)*4*pi/9))) ((-55) * (sin ((3*pi/2) + (time/4)*13*pi/18))) (circ time)),
		Color (mGreen time) (Translate (55 * (cos (pi+(time/4)*4*pi/9))) ((-55) * (sin ((3*pi/2) + (time/4)*13*pi/18))) (circ time)),
		Color (mYellow time) (Translate (55 * (cos (pi+(time/4)*pi/9))) (55+(55 * (sin ((3*pi/2) + (time/4)*13*pi/18)))) (circ time)),
		--the text under the logo
		Color (white) (Translate (-165) (-110)(Scale (0.3)(0.3)(Text "Starting Windows")))]
--windows
post = \time ->
	Pictures[
		-- back ground color behind the windows so the transparency show brighter
		Color (white) (Translate (-55) (0) (square)),
		Color (white) (Translate (-55) (110) (square)),
		Color (white) (Translate (55) (110) (square)),
		Color (white) (Translate (55) (0) (square)),

		-- display windows with repeating transparency over time
		Color (mBlue time) (Translate (-55) (0) (square)),
		Color (mRed time) (Translate (-55) (110) (square)),
		Color (mGreen time) (Translate (55) (110) (square)),
		Color (mYellow time) (Translate (55) (0) (square)),
		--text
		Color (white) (Translate (-165) (-110)(Scale (0.3)(0.3)(Text "Starting Windows")))]
--call the pictures
main = draw $
		\t -> if t <= 3 then pre t else post t
--diplay as a animation
draw = 
    animate
        (InWindow
           "Windows 7" -- window title
        (1024, 600)   -- window size
        (125,100)     -- window position
        )    
      black            -- background color
		