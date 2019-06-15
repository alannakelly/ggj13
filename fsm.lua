FSM = class(function(f) end)

function FMS:changeState(newState)
  currentGameState.exit()
  currentGameState = newState
  currentGameState.enter()
end
