require 'state'

FSM = class(State, function(fsm, name)
    fsm.name = name or "Finite State Machine"
  end)

function FSM:changeState(newState)
  currentGameState.exit()
  currentGameState = newState
  currentGameState.enter()
end
