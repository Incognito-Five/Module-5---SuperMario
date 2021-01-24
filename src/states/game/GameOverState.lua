GameOverState = Class{__includes = BaseState}

function GameOverState:init()
	gSounds['game-over-bg']:play()
	
end

function GameOverState:update(dt)
	if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
		gSounds['game-over-bg']:stop()
		gStateMachine:change('start')
	end

end

function GameOverState:render()

		love.graphics.setColor(0, 0, 0, 120)
		love.graphics.rectangle('fill', 0, 0, VIRTUAL_WIDTH, VIRTUAL_HEIGHT)

		love.graphics.setFont(gFonts['large'])
		love.graphics.setColor(0, 0, 0, 255)
		love.graphics.printf('GAME OVER!', 1, VIRTUAL_HEIGHT / 2 - 40, VIRTUAL_WIDTH, 'center')
		love.graphics.setColor(255, 255, 255, 255)
		love.graphics.printf('GAME OVER!', 0, VIRTUAL_HEIGHT / 2 - 40, VIRTUAL_WIDTH, 'center')

		love.graphics.setFont(gFonts['small'])
		love.graphics.setColor(255, 255, 255, 255)
		love.graphics.printf('Press Enter to Play Again.', 0, VIRTUAL_HEIGHT / 2 + 30, VIRTUAL_WIDTH, 'center')

end