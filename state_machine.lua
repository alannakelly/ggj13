require 'class'
require 'state'

StateMachine = class(function(sm)
  sm.previousState = nil
  sm.currentState = nil
end)

function StateMachine:changeState(newState)
  if self.currentState then
    self.currentState:exit()
  end
  self.previousState=self.currentState
  self.currentState=newState(self)
  self.currentState:enter()
end

function StateMachine:update()
  if self.currentState then
    self.currentState:update()
  end
end

