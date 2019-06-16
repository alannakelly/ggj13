require 'state'

GameScreen = class(State, function(gs, owner, name)
      State.init(gs,owner,name or "Unknown Screen")
    end)

function GameScreen:draw(g)
  g.clear(0,0,1,1)
  g.setColor(1, 1, 1, 1)
  g.print(self.name,10,10)
end

function GameScreen:enter()
  State:enter()

function GameScreen:update()
  State:update()
end

function GameScreen:exit()
  State:exit()
end


