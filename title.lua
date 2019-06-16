require 'game_screen'
require 'menu'

Title = class(GameScreen,
  function(t,owner)
    GameScreen:init(owner, "Title Screen")
  end)

function Title:enter()
  self.seconds =seconds
end

function Title:draw(g)
  GameScreen:draw(g)
  g.setColor(1, 1, 1, 1)
  g.print("Logos and other shit!"..(getSeconds()), g.getWidth()/2, g.getHeight()/2)
end

function Title:update()
  GameScreen:update()
  if GameScreen:getSeconds() >= 30 then
    self.owner:changeState(Menu)
  end
end
