-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: february 19
--
-- This program determines the area and cirumeference of a circle 
-- 
-----------------------------------------------------------------------------------------

display.setDefault('background', 0.1, 0.3, 0.7)

local theHeading = display.newText('     Measurements of a Circle\nPut the diameter in meters here:\n', 1024, 200, native.SystemFont, 100)


diameterBox = native.newTextField(display.contentCenterX, display.contentCenterY - 400, 600, 100)
diameterBox.id = 'Number Box'

local myButton = display.newImageRect('./Assets/Sprites/button.png', 200, 200)
myButton.x = 1500
myButton.y = display.contentCenterY - 380
myButton.id = 'Initiator'


local function doingTheMath(event)
	diameter = tonumber(diameterBox.text)
	areaMath = (3.14)*(diameter/2)^2
	circumferenceMath = 2*(3.14)*(diameter/2)
	local areaCircle = display.newText('Area: '.. areaMath..'m^2', 512, 900, native.SystemFont, 100)
	local circumferenceCircle = display.newText('Circumference: '.. circumferenceMath..'m', 1536, 900, native.SystemFont, 100)


	return true
end

myButton: addEventListener('touch', doingTheMath)