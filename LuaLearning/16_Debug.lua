
function myfunction()
    print(debug.traceback("Stack trace"))
    print(debug.getinfo(1))
    print("Stack trace end")
    return 10
end

myfunction()
print(debug.getinfo(1))
-- Stack trace
-- stack traceback:
-- 	16_Debug.lua:3: in function 'myfunction'
-- 	16_Debug.lua:9: in main chunk
-- 	[C]: in ?
-- table: 0x7fac29408d20
-- Stack trace end
-- table: 0x7fac29409370


function newCounter()
    local n = 0
    local k = 0

    return function()
        k = n
        n = n + 1
        return n
    end
end

counter = newCounter()
print(counter())
print(counter())


local i = 1
repeat
    name, val = debug.getupvalue(counter, i)
    if name then
        print("index", i, name, "=", val)
        if name == "n" then
            debug.setupvalue(counter, 2, 10)
        end
    end

    i = i + 1
until not name
print(counter())
-- index	1	k	=	1
-- index	2	n	=	2
-- 11
