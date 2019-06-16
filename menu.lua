require 'game_screen'

local g = love.graphics

Menu = class(GameScreen,
  function(m,name,title,items)
    GameScreen.init(m,owner,"Menu Screen")
    m.title = title or "Main Menu"
    m.items = items or {}
  end)

function Menu:addItem(item)
  table.insert(self.items,item)
end

function Menu:draw()
  local width = g.getWidth()
  local height = g.getHeight()
  local centerWidth = width / 2
  local centerHeight = height / 2
  local itemY = (height/16) * 3

  g.print(self.title,centerWidth,height/16,width*0.75,"center")
  for item in self.items do
    g.print(item.text, centerWidth, itemY, 0, "left")
  end
end
