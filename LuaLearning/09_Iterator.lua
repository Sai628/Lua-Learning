
array = {"Lua", "Tutorial"}
for i,v in ipairs(array) do
    print(i,v)
end
-- 1	Lua
-- 2	Tutorial


function square(iteratorMaxCount, currentNumber)
    if currentNumber < iteratorMaxCount then
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end
end

for i,n in square, 3, 0 do
    print(i,n)
end
-- 1	1
-- 2	4
-- 3	9


function iter(a, i)
    i = i + 1
    local v = a[i]
    if v then
        return i, v
    end
end

function myipairs(a)
    return iter, a, 0
end

for i,n in myipairs(array) do
    print(i, n)
end
-- 1	Lua
-- 2	Tutorial


function elementIterator(collection)
    local index = 0
    local count = #collection
    
    return function()
        index = index + 1
        if index <= count then
            return collection[index]
        end
    end
end

for element in elementIterator(array) do
    print(element)
end
-- Lua
-- Tutorial
