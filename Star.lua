--[[
    Star Class
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The Bird is what we control in the game via clicking or the space bar; whenever we press either,
    the bird will flap and go up a little bit, where it will then be affected by gravity. If the bird hits
    the ground or a pipe, the game is over.
]]

Star = Class{}

function Star:init(score, x, y)
    self.image = love.graphics.newImage(star)
    self.x = VIRTUAL_WIDTH / 2 - 8
    self.y = VIRTUAL_HEIGHT / 2 - 8

    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    self.dy = 0
end

function Bird:render()
    love.graphics.draw(self.image, VIRTUAL_WIDTH/2 - 25, 110)
end