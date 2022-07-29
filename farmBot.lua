-- farmBot 1.0
 
--One forward
function onefor()
    turtle.forward()
    farm()
end
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
 
--180 degree turns 
 
function tL2()
    for i = 1,2 do
        turtle.turnLeft()
    end
end
 
function tR2()
    for i = 1,2 do
        turtle.turnRight()
    end
end
 
--farm
 
function farm()
        
 turtle.select(1) --selet seeds 
   planted, growState = turtle.inspectDown()
    if planted then
    if string.match(growState.name, "harvestcraft") then
        maxgrowState = 3
    else
        maxgrowState = 7
    end
--check if grown    
    if growState.metadata == maxgrowState then
        turtle.digDown()
        turtle.placeDown()
    end
        else
        turtle.placeDown()
    end
end
 
--y movement
 
function ymove()
    for i = 1, ycrd do
     onefor()
  end
end     
 
function move()
 
 turtle.refuel()
 onefor()
 xcrdp = xcrd/2 
 
   for i = 1,xcrdp do
     refuel()
     ymove()
     turtle.turnRight()
     onefor()
     turtle.turnRight()
     ymove()
     turtle.turnLeft()
     onefor()
     turtle.turnLeft()
    end
   
     turtle.turnLeft()
     for i = 1,xcrd do
      turtle.forward()
     end
    turtle.turnRight()
    turtle.back()
    
end
 
--Main
 
print("Please enter the X length: ")
xcrd = read()
print("Please enter the Y length: ")
ycrd = read()    
move()
tL2()
turtle.select(2)
turtle.drop()
tR2()
print("done")
