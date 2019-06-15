require 'game_screen'

local graphics = love.graphics

Menu = class(GameScreen,
  function(m,name,items)
    GameScreen.init(m,name or "Menu Screen")
    m.items = items or {}
  end)

function Menu:addItem(item)

end

