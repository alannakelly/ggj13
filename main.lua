function love.load()
  love.keyboard.setKeyRepeat(false)
end

function love.update(dt)
end

function love.draw()
  love.graphics.rectangle("fill", 20, 50, 60, 120)
end

function love.keypressed( key, scancode, isrepeat )
end

function love.keyreleased( key, scancode )
  if key == "escape" then
    love.event.quit()
  end
end


