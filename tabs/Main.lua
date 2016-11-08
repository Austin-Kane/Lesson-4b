-- Lesson 4b

-- Created by: Austin Kane
-- Created on: November 8, 2016
-- Created for: ICS2O
-- This program displays a sprite and it moves around

local rocketship
local object2

-- Use this function to perform your initial setup
function setup()
    -- setup display
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- create rocketship
    local imageName = "SpaceCute:Rocketship"
    rocketship = SpriteObject (imageName, vec2(WIDTH/2, HEIGHT/2))
    
    local object2Name = ("Planet Cute:Gem Green")
    object2 = SpriteObject(object2Name, vec2(WIDTH, HEIGHT))
end

-- This function gets called once every frame
function touched(touch)
    --local variables
    
    --do your coding here
    rocketship:touched(touch)
    object2:touched(touch)
end    

-- This function gets called once every frame
function draw() 
    -- Local Variables
    
      -- Do your drawing here
    background(0, 0, 0, 255)
    sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    rocketship:draw()
    object2:draw()
end