require 'class'

State = class(function(s, name="Unknown State")
    s.name = name
end)

function State:enter()
  print("Entering state: " .. name)
end

function State:update()
end

function State:exit()
  print("Exit state: " .. name)
end

