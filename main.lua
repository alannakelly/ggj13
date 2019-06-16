require 'title'
require 'state_machine'

local keyboard = love.keyboard
local window = love.window

Game = class(StateMachine)

function Game:init()
  keyboard.setKeyRepeat(false)
  window.setTitle("One Button Jam - Galway Game Jam 13")
  Game:changeState(Title)
end

function Game:draw(g)
  if self.currentState then
    self.currentState:draw(g)
  else
    g.clear(1,0,1,1) 
  end
end

function Game:keypressed(key, scancode, isrepeat)
end

function Game:keyreleased(key, scancode)
end
  
function love.load()
  Game:init()
end

function love.update(dt)
  Game:update(dt)
end

function love.draw()
  Game:draw(love.graphics)
end

function love.keypressed( key, scancode, isrepeat )
  Game:keypressed(key, scancode, isrepeat)
end

function love.keyreleased( key, scancode )
  if key == "escape" then
    love.event.quit()
  end
  Game:keyreleased(key, scancode)
end

