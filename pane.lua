require "class"

Pane = class(function(p, name, x, y, w, h, bgcol, text, textcol)
  p.name = name or "Unnamed Pane"
  p.x = x or 20
  p.y = y or 20
  p.w = w or 400
  p.h = h or 400
  p.bgcol = bgcol or {r=230,g=44,b=123}
  p.text = text or {'...'}
  p.textcol = textcol or {}
end)


function Pane:draw()
  print("Drawing Pane " .. name)
  love.graphics.setColor(bgcol.r, bgcol.g, bgcol.b)
  love.graphics.rectangle("fill", x, y, w, h)
end

function Pane:update(dt)
  print("Updating Pane " .. name)
end
  
  
