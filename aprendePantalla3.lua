local composer = require( "composer" )
local widget = require( "widget" )
local scene = composer.newScene()
local sprite = require "sprite"
local listener = {}
----------------------------------------------------------------------------------------------------------
--FUNCIONES


function scene:create( event )
	

	local grupoAprende = self.view 

	display.setDefault("background", 87/255, 133/255, 255/255)
	
		local fondo = display.newImageRect("imagenes/fondoAprendePantalla3.png",320,570)
	fondo.x = display.contentWidth/2
	fondo.y = display.contentHeight/2
	
	
				local btnAprendePrincipal = widget.newButton(
			{
				width = 213,
				height = 50,
				defaultFile = "imagenes/btnAprendePrincipal.png",
				overFile = "imagenes/btnAprendePrincipalPress.png",
				onEvent = btnAprendePrincipal
			}
		)
		 
		-- Center the button
		btnAprendePrincipal.x =display.contentWidth/2
		btnAprendePrincipal.y =display.contentHeight/2+50
		
		
		grupoAprende:insert(fondo)
grupoAprende:insert(btnAprendePrincipal)
		
		function btnIrAprende()
		 
		-- composer.gotoScene( "aprendePantalla3", { effect = "fromLeft", time = 100 } )
			
		end
		
		fondo:addEventListener("tap",btnIrAprende)
		
	

	
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