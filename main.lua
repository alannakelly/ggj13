require 'title'

local currentGameState = nil
local keyboard = love.keyboard
local graphics = love.graphics

  
function love.load()
  currentGameState = Title()
  keyboard.setKeyRepeat(false)
end

function love.update(dt)
  if currentGameState then
    currentGameState:update(dt)
  end
end

function love.draw()
  if currentGameState then
    currentGameState:draw()
  else
    graphics.clear(1,0,1,1) 
  end
end

function love.keypressed( key, scancode, isrepeat )
end

function love.keyreleased( key, scancode )
  if key == "escape" then
    love.event.quit()
  end
end


