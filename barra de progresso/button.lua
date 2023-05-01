local button = {

	draw = function () 
		love.graphics.setColor(love.math.colorFromBytes(240, 166, 245))
  		love.graphics.rectangle ("fill", 100, 300, 200, 30)
  		if love.mouse.isDown (1) then
   		progressSpeed = 0
	else
   		progressSpeed = 1
   	end
   end

}

return button