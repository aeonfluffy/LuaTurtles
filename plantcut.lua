--Turtle LumberJack

--Place sapling type in slot 15, logs in 16

--Place saplings to place in slot 1

turtle.select(1)

for i = 0, turtle.getItemCount() do
	turtle.select(1)
	if turtle.compareTo(15) then
		turtle.place()
	end
	while turtle.compareTo(15) do
		turtle.sleep(1)
	end
	--now dig
	if not turtle.compare() then
		turtle.select(16)
		turtle.dig()
		turtle.forward()
		--move him up
		while turtle.compareUp() do
			turtle.digUp()
			turtle.up()
		end
		--bring turtle back down
		while not turtle.detectDown() do
			turtle.down()
		end
		--move turtle back to starting place
		turtle.back()
	end
end