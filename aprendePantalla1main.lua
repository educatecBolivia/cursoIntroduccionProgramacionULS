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
			display.newRect( 0, 0, 320, 570 ), 
			display.newRect( 0, 0, 300, 50 ),
			display.newRect( 0, 0, 200, 200 ),
			display.newRect( 0, 0, 80, 150 )
		}	
		
local slidesPanel = slideView.new( mySlides, mySlideListener )		

