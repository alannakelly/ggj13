require 'class'

State = class(function(s, name)
    s.name = name or "Unknown State"
end)

function State:enter()
  print("Entering state: " .. self.name)
end

function State:update()
end

function State:exit()
  print("Exit state: " .. self.name)
end

