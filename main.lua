-----------------------------------------------------------------------------------------
--
--
-- made by Md Faiyaz Hossain
--created in 2018-02-28
--
-----------------------------------------------------------------------------------------

local day
local age

display.setDefault("background", 0.2, 0.3, 0.4)

local dayTextField = native.newTextField( 1765 , 200, 500, 128 )
dayTextField.id = "day of the week"


local instructionsDay = display.newText( 'Enter the day of the week:', 750, 200, native.systemFont, 128 )
instructionsDay.id = "day"



local instructionsAge = display.newText( 'Enter your age:', 443, 400, native.systemFont, 128 )
instructionsAge.id = "age"



local ageTextField = native.newTextField( 920 , 700, 500, 128 )
ageTextField.id = "eage"


local enterButton = display.newImageRect( 'Button.png', 650, 300 )
enterButton.x = display.contentCenterX
enterButton.y = 1000
enterButton.id = "Enter Button"

function onEnterClicked( event )
	-- figures out if, based on age and day, what the user must do that day
	day = dayTextField.text
	age = tonumber(ageTextField.text)

	if day == 'Saturday' or day == 'Sunday' then
		local restText = display.newText( 'Time to relax for the weekend!', display.contentCenterX, 1400, native.systemFont, 128 )
	elseif age >18 then
		local workText = display.newText( 'Time to go to work!', display.contentCenterX, 1400, native.systemFont, 128 )
	else 
		local schoolText = display.newText( 'Time to go to school!', display.contentCenterX, 1400, native.systemFont, 128 )
	end
end

enterButton:addEventListener( 'touch', onEnterClicked)