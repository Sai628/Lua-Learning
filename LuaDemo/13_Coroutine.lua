
co = coroutine.create( 
    function(i)
        print(i)
    end
 )
coroutine.resume(co, 1)  -- 1
print(coroutine.status(co))  -- dead


co = coroutine.wrap(
    function(i)
        print(i)
    end
)
co(1)  -- 1


co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))
                print(coroutine.running(co2))
            end
            coroutine.yield() 
        end
    end
)
coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)
-- 1
-- 2
-- 3
-- running
-- thread: 0x7faeb3c093c8	false

print(coroutine.status(co2))  -- suspended
print(coroutine.running(co2))  -- thread: 0x7ffb48403458	true



function foo(a)
    print("foo function output:", a)
    return coroutine.yield(2 * a)
end

co = coroutine.create(
    function(a, b)
        print("the first time coroutine output:", a, b)
        local r = foo(a + 1)
        
        print("the second time coroutine output:", r)
        local r, s = coroutine.yield(a + b, a - b)
        
        print("the third time coroutine output:", r, s)
        return b, "finish coroutine"
    end
)

print("main", coroutine.resume(co, 1, 10))
print("---------")
print("main", coroutine.resume(co, "r"))
print("---------")
print("main", coroutine.resume(co, "x", "y"))
print("---------")
print("main", coroutine.resume(co, "x", "y"))
print("---------")
-- the first time coroutine output:	1	10
-- foo function output:	2
-- main	true	4
-- ---------
-- the second time coroutine output:	r
-- main	true	11	-9
-- ---------
-- the third time coroutine output:	x	y
-- main	true	10	finish coroutine
-- ---------
-- main	false	cannot resume dead coroutine
-- ---------



local newProductor


function productor()
    local i = 0
    while true do
        i = i + 1
        send(i)
    end
end


function consumer()
    while true do
        local i = receiver()
        print(i)
    end
end


function receiver()
    local status, value = coroutine.resume(newProductor)
    return value
end


function send(i)
    coroutine.yield(i)
end


newProductor = coroutine.create(productor)
consumer()
-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7
-- 8
-- 9
-- 10
-- 11
-- 12
-- 13
-- ……