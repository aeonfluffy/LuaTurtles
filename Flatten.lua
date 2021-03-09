--Slot 1 - 4 are meant for dirt, slots 5 - 8 are for sand
--The rest of the turtle should be empty to store any debris
--Functions

--fill holes

function fillHole()
	--make sure the currently selected slot has something in it	
	while not turtle.detectDown() do
		turtle.select(5)
		if turtle.getItemCount() == 0 then
			turtle.select(6)
				if turtle.getItemCount() == 0 then
					turtle.select(7)
					if turtle.getItemCount() == 0 then
						turtle.select(8)
						if turtle.getItemCount() == 0 then
							write("Fill me with more sand")
							read()
						end
					end
				end
			
		end

		turtle.placeDown()
	end
end

function placeDirt()
	--after the hole is filled, place dirt
	fillHole()
		--make sure the currently selected slot has something in it
	turtle.select(1)
	if turtle.getItemCount() == 0 then
		turtle.select(2)
			if turtle.getItemCount() == 0 then
				turtle.select(3)
				if turtle.getItemCount() == 0 then
					turtle.select(4)
					if turtle.getItemCount() == 0 then
						write("Fill me with more dirt")
						read()
					end
				end
			end
		
	end
	--dig the top layer off and put dirt down
	turtle.digDown()
	turtle.placeDown()
end

--flatten out above the turtle
function digUp()
	while turtle.detectUp() do
		turtle.digUp()
		turtle.up()
	end
	while not turtle.detectDown() do
		turtle.down()
	end
end

function moveForward(length, widthcount)
	for i = 0, length do
		digUp()
		turtle.dig()
		turtle.forward()
		fillHole()
		placeDirt()
	end
	--turn him to go the next way
	--i being even will turn him right
	--i being odd will turn him left
	if ( widthcount % 2 == 0) then
		turtle.turnRight()
		turtle.dig()
		turtle.forward()
		turtle.turnRight()
		fillHole()
		placeDirt()
	else		
		turtle.turnLeft()
		turtle.dig()
		turtle.forward()
		turtle.turnLeft()
		fillHole()
		placeDirt()	
	end
end

--run the program

--get the length and width of the area to be leveled
write("Enter the Length")
local length = read()
write("Enter the Width")
local width = read()
local widthcount = 0

for i = 0, width do
	moveForward(length,widthcount)
	widthcount = widthcount + 1
end


