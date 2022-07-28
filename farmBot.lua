-- farmBot 1.0
print("Please enter the X length: ")
xcrd = read()
print("Please enter the Y length: ")
ycrd = read()

--refuel

function refuel()
    
    fuel = turtle.getFuelLevel()
    if fuel < 15 then
    turtle.select(16)
    for i = 1,5 do
    turtle.refuel()
    end
    else 
    end
    
end


--farm

function farm()
    
 turtle.select(1) 
   planted, growState = turtle.inspectDown()
    if planted then
    if string.match(growState.name, "harvestcraft") then
        maxgrowState = 3
    else
        maxgrowState = 7
    end
    
    if growState.metadata == maxgrowState then
        turtle.digDown()
        turtle.placeDown()
    end
        else
        turtle.placeDown()
    end
end

function ymove()
    for i = 1, ycrd do
     turtle.forward()
     farm()
  end
end     

function move()
 turtle.refuel()
 turtle.forward()
 farm()
 xcrdp = xcrd/2 
 print(xcrdp) 
   for i = 1,xcrdp do
     refuel()
     ymove()
     turtle.turnRight()
     turtle.forward()
     farm()
     turtle.turnRight()
     ymove()
     turtle.turnLeft()
     turtle.forward()
     farm()
     turtle.turnLeft()
    end
    remen = math.fmod(xcrd,2) 
    if remen == 0 then
    turtle.turnLeft()
    for i = 1,8 do
    turtle.forward()
    end
    turtle.turnRight()
    turtle.back()
    else
    
    end
end
move()
print("done")
