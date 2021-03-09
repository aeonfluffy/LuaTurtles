--This'll craft cobble into condensed version
--place the cobble in a chest on the right side of the turtle
--place the condensed chest on the left side of the turtle

function suck()
	turtle.select(1)
	turtle.suck()
	turtle.select(2)
	turtle.suck()
	turtle.select(3)
	turtle.suck()
	turtle.select(5)
	turtle.suck()
	turtle.select(6)
	turtle.suck()
	turtle.select(7)
	turtle.suck()
	turtle.select(9)
	turtle.suck()
	turtle.select(10)
	turtle.suck()
	turtle.select(11)
	turtle.suck()
end

function turnAround()
 turtle.turnLeft()
 turtle.turnLeft()
end

write ("How many times shall I craft?")
local times = read()

for i = 0, times do
	suck()
	turtle.craft()
	--turn left to face other chest
	turnAround()
	--drop all the shit into the new chest
	turtle.drop()
	--turn back around
	turnAround()
end