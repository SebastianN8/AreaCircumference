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

-- Heading and background
display.setDefault('background', 0.1, 0.3, 0.7)
local theHeading = display.newText('     Measurements of a Circle\nPut the diameter in meters here:\n', 1024, 200, native.SystemFont, 100)

-- Textfield
local diameterBox = native.newTextField(display.contentCenterX, display.contentCenterY - 400, 600, 100)
diameterBox.id = 'Number Box'

-- Execution Button
local myButton = display.newImageRect('./Assets/Sprites/button.png', 200, 200)
myButton.x = 1500
myButton.y = display.contentCenterY - 380
myButton.id = 'Initiator'


local function doingTheMath(event)
	local diameter = tonumber(diameterBox.text)
	if diameter > 0 then
	--Calculates and displays the area of the circle
	local areaMath = (3.14)*(diameter/2)^2
	local areaCircle = display.newText('Area: '.. areaMath..'m^2', 412, 900, native.SystemFont, 100)
	-- Calculates and displays the circumference of the circle
	local circumferenceMath = 2*(3.14)*(diameter/2)
	local circumferenceCircle = display.newText('Circumference: '.. circumferenceMath..'m', 1536, 900, native.SystemFont, 100)
	-- Statement in case the number given is negative
	else local mistake = display.newText('Please input a positive digit number!!!', 1024, 900, native.SystemFont, 100)
	end

	return true
end

myButton: addEventListener('touch', doingTheMath)