local composer = require( "composer" )
local widget = require( "widget" )
local scene = composer.newScene()
local sprite = require "sprite"
local listener = {}
----------------------------------------------------------------------------------------------------------
--FUNCIONES


function scene:create( event )
	
	local slideView = require("Zunware_SlideView")

local topImages = {
	"images/top/top_01.png",
	"images/top/top_02.png",
	"images/top/top_03.png",
	--"top_04.png"
}

local botImages = {
	"images/bot/bot_01.png",
	"images/bot/bot_02.png",
	"images/bot/bot_03.png",
	--"bot_04.png",
}


local b = slideView.new(botImages, nil)
local a = slideView.new(topImages, nil)

-- Change positions for SlideViews
a.y = -99
b.y = 100


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