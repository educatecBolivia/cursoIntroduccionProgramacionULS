local composer = require( "composer" )
local widget = require( "widget" )
local slideView = require("slideView")
local scene = composer.newScene()
local sprite = require "sprite"
local listener = {}
----------------------------------------------------------------------------------------------------------
--FUNCIONES
local function mySlideListener(event)
			print("Action:", event.phase, "Current Slide:", event.slide)
end				

		local mySlides = {
			display.newRect( 0, 0, 150, 50 ), 
			display.newRect( 0, 0, 300, 50 ),
			display.newRect( 0, 0, 200, 200 ),
			display.newRect( 0, 0, 320, 150 )
		}	
		

		
local slidesPanel = slideView.new( mySlides, mySlideListener )	

	
function scene:create( event )
	
end

function scene:destroyScene( event )
	local grupoAprende = self.view

	-- INSERT code here (e.g. remove listeners, widgets, save state, etc.)
	-- Remove listeners attached to the Runtime, timers, transitions, audio tracks

end
function scene:hide( event )

    local grupoAprende = self.view
    local phase = event.phase
	
end



scene:addEventListener( "create", scene )
scene:addEventListener( "miko", scene )
scene:addEventListener( "destroy", scene )
scene:addEventListener( "hide", scene )
-- -------------------------------------------------------------------------------

return scene