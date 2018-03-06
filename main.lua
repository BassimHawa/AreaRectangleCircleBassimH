-----------------------------------------------------------------------------------------
--Title: Local Variables
--Name: Bassim Hawa
--Course ICS2O/3C
--This program displays a rectangle and shows its area 
-----------------------------------------------------------------------------------------

-- Create my local variables
local areaText
local textSize = 25
local myRectangle
local myCircle
local radiusOfCircle = 20
local areaOfCircle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle
local PI = 3.14

-- set the background colour of my screen. Remember that colors are between 0 and 1.
display.setDefault("background", 0/255, 100/255, 0/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--draw the circle that is half the width and height of the screen size
myCircle = display.newCircle(0, 0, radiusOfCircle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--anchor the circle in bottom left corner of the screen and set its (x,y) position
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 220
myCircle.y = 270

-- set the width of the border (rectangle)
myRectangle.strokeWidth = 15

--set the width of the border (circle)
myCircle.strokeWidth = 15

-- set the color of the rectangle
myRectangle:setFillColor(1, 0.5, 0.5)

-- set the color of the circle

myCircle:setFillColor(0.5, 0.5, 1)

-- set the color of the border (rectangle)
myRectangle:setStrokeColor(0.4, 0.5, 1)

--set the color of the border (circle)
myCircle:setStrokeColor(1, 0.4, 0.5)

-- calculate the area 
areaOfRectangle = widthOfRectangle * heightOfRectangle

--calculate the area
areaOfCircle = radiusOfCircle * radiusOfCircle * PI

-- write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this rectangle with a width of \n" .. 
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

--anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

--set the colour of the newText
areaText:setTextColor(1, 1, 1)

--write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this circle with a radius of \n" ..
	radiusOfCircle .. " is " .. areaOfCircle .. " pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 0
areaText.y = 250

--set the colour of the newText
areaText:setTextColor(1, 1, 1)
