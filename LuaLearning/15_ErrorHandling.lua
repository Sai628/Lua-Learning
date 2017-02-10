
-- assert error
local function add(a, b)
    assert(type(a) == "number", "a is not a number")
    assert(type(b) == "number", "b is not a number")
    return a + b
end

--add(10)

-- lua: 15_ErrorHandling.lua:5: b is not a number
-- stack traceback:
-- 	[C]: in function 'assert'
-- 	15_ErrorHandling.lua:5: in local 'add'
-- 	15_ErrorHandling.lua:9: in main chunk
-- 	[C]: in ?


-- pcall xpcall debug
pcall(function(i) print(i) end, 33)  -- 33
pcall(function(i) print(i) error("error..") end, 34)  -- 34

function f() return false, 2 end

if f() then
    print(1)
else
    print(0)
end
-- 0


function myfunction()
    n = n / nil
end

function myerrorhandler(err)
    print("Error:", err)
end

status = xpcall(myfunction, myerrorhandler)
print(status)
-- Error:	15_ErrorHandling.lua:34: attempt to perform arithmetic on a nil value (global 'n')
-- false
