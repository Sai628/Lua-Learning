
-- Shape
Shape = {
    area = 0
}

function Shape:new(obj, side)
    obj = obj or {}
    setmetatable(obj, self)
    
    self.__index = self
    side = side or 0
    self.area = side * side
    
    return obj
end

function Shape:printArea()
    print("shape area is:", self.area)
end

myshape = Shape:new(nil, 10)
myshape:printArea()  -- shape area is:	100



-- Square
Square = Shape:new()

function Square:new(obj, side)
    obj = obj or Shape:new(obj, side)
    setmetatable(obj, self)
    
    self.__index = self
    
    return obj
end

function Square:printArea()
    print("square area is:", self.area)
end

mysquare = Square:new(nil, 12)
mysquare:printArea()  -- square area is:	144



-- Rectangle
Rectangle = Shape:new()

function Rectangle:new(obj, length, breadth)
    obj = obj or Shape:new(obj)
    setmetatable(obj, self)
    
    self.__index = self
    self.area = length * breadth
    
    return obj
end

function Rectangle:printArea()
    print("rectange area is:", self.area)
end

myrectangle = Rectangle:new(nil, 10, 20)
myrectangle:printArea()  -- rectange area is:	200
