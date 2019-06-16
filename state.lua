require 'class'

State = class(function(s, owner, name)
    s.name = name or "Unknown State"
    s.startTime=0
    s.owner=owner
end)

function State:enter()
  print("Entering state: " .. self.name)
  self.startTime = love.timer.getTime()
end

function State:update()
end

function State:exit()
  print("Exit state: " .. self.name)
end

function State:getSeconds()
  return love.timer.getTime() - self.startTime
end

