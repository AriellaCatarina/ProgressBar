local button = require ("button")
Fonte1 = love.graphics.newFont ("Bohemian Typewriter.ttf")
--text = love.graphics.newText(Fonte1, "Esta barra de progresso leva 1 minuto para completar")

function love.load()
   progress = 0 -- Progresso atual
   progressMax = 100 -- Progresso máximo
   barWidth = 200 -- Largura da barra
   barHeight = 20 -- Altura da barra
   lastTime = love.timer.getTime()
   progressCurrent = 0
   progressSpeed = 1 -- valor de progresso a cada segundo
end

function love.draw()
   love.graphics.setColor(1, 1, 1)
   love.graphics.print ("Esta barra de progresso leva \n1 minuto para completar", Fonte1, 100, 150, 0, 1.3) --love.graphics.print( text, x, y, r, sx, sy, ox, oy, kx, ky )
   
   -- Desenha o fundo da barra
   love.graphics.setColor(1, 1, 1) -- Branco
   love.graphics.rectangle("fill", 100, 100, barWidth, barHeight)
   
   -- Desenha o progresso atual
   love.graphics.setColor(0, 0.5, 1) -- Azul claro
  love.graphics.rectangle("fill", 100, 100, 200 * (progressCurrent / progressMax), 20) --love.graphics.rectangle( mode*, x, y, width, height, rx**, ry***, segments**** )
   
   button.draw ()

end

function love.update(dt)
   currentTime = love.timer.getTime()
   if currentTime - lastTime >= 1 then
      progress = progress + 1
      lastTime = currentTime
   end
   progressCurrent = progressCurrent + progressSpeed * dt
  if progressCurrent >= progressMax then
    progressCurrent = 0
  end
end

--[[
*Mode
   fill
      Draw filled shape.
   line
      Draw outlined shape.

**The x-axis radius of each round corner. Cannot be greater than half the rectangle's width.
***The y-axis radius of each round corner. Cannot be greater than half the rectangle's height.
****The number of segments used for drawing the round corners. A default amount will be chosen if no number is given.

Ver: https://love2d.org/wiki/love.graphics.rectangle
]]--

--[[
Estudo:
Concatenação: 

   variaveldetexto1 = "olá"
   variaveldetexto2 = "mundo"

   print (variaveldetexto1 + variaveldetexto2) = ERRADO!
   print (variaveldetexto1 .. variaveldetexto2) = CERTO!
]]--
