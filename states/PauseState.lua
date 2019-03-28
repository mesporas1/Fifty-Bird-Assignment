--[[
    ScoreState Class
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    A simple state used to display the player's score before they
    transition back into the play state. Transitioned to from the
    PlayState when they collide with a Pipe.
]]

PauseState = Class{__includes = BaseState}

--[[
    When we enter the score state, we expect to receive the score
    from the play state so we know what to render to the State.
]]

function PauseState:update(dt)
    -- go back to play if enter is pressed
    if love.keyboard.wasPressed('p') then
        gStateMachine:change('play')
    end
end

function PauseState:render()
    -- simple UI code
    love.graphics.setFont(flappyFont)
    love.graphics.printf('Pause Menu', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
    love.graphics.printf('Press P to resume', 0, 100, VIRTUAL_WIDTH, 'center')
end