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


local diameterBox = native.newTextField(display.contentCenterX, display.contentCenterY - 400, 600, 100)
diameterBox.id = 'Number Box'

local myButton = display.newImageRect('./Assets/Sprites/button.png', 200, 200)
myButton.x = 1500
myButton.y = display.contentCenterY - 380
myButton.id = 'Initiator'

local diameter =

local function doingTheMath(event)
	local areaMath = math.pi*(diameter/2)^2

	return true
end

myButton: addEventListener('touch', doingTheMath)