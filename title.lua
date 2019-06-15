require 'game_screen'

local graphics = love.graphics

Title = class(GameScreen,
  function(t,name)
    GameScreen.init(t,name or "Title Screen")
  end)

function Title:update(dt)

  key = getKetReleased()
  if key == "space" then
    fsm.changeState(Title())
  end
end
