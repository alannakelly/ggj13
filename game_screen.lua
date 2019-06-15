require 'state'

local graphics = love.graphics

GameScreen = class(State, function(gs, name)
    State.init(gs,name or "Unknown Screen")
  end)

function GameScreen:draw()
  graphics.clear(0,0,1,1)
  graphics.setColor(255, 255, 255, 255)
  graphics.print(self.name,10,10)
end

function GameScreen:update(dt)
end
