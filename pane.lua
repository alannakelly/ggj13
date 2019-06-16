require "state"

Pane = class(State, function(p, name, x, y, w, h, bgcol, text, textcol)
  p.name = name or "Unnamed Pane"
  p.x = x or 20
  p.y = y or 20
  p.w = w or 400
  p.h = h or 400
  p.bgcol = bgcol or {r=230,g=44,b=123} -- rgb values
  p.text = text or {'Testing...','1...','2...'}
  p.textcol = textcol or {r=240,g=240,b=240,a=240} -- rgba values
end)


function Pane:draw()
  print("Drawing Pane " .. name)
  love.graphics.setColor(bgcol.r, bgcol.g, bgcol.b)
  love.graphics.rectangle("fill", x, y, w, h)

  love.graphics.setColor(textcol.r, textcol.g, textcol.b)
 
  local _x,_y = x+8,y+8
  for line in text do
    print({textcol,line}, _x, _y )
    _y = _y + 16
  end
end

function Pane:update(dt)
  print("Updating Pane " .. name)
end
  
  
