
-- [[function reture the max value between two numbers]]
function max(num1, num2)
    if num1 > num2 then
        result = num1
    else
        result = num2
    end
    
    return result
end

print(max(10, 4))
print(max(5, 6))


-- function as param
myprint = function(param)
    print("##" .. param .. "##")
end

function add(num1, num2, functionPrint)
    result = num1 + num2
    functionPrint(result)
end
myprint(10)
add(2, 5, myprint)


-- multiple return values
startIndex, endIndex = string.find("www.github.com", "github")
print(startIndex, endIndex)  -- 5 10

function maximum(a)
    local index = 1
    local m = a[index]
    
    for i,v in ipairs(a) do
        if v > m then
            index = i
            m = v
        end
    end
    
    return m, index    
end

print(maximum({8, 10, 23, 12, 5}))  -- 23 3


-- variable parameter
function average(...)
    result = 0
    local arg = {...}
    for i,v in ipairs(arg) do
        result = result + v
    end
    
    print("parameter count is: ", #arg)
    return result / #arg
end

print("average value is:", average(10, 5, 3, 4, 5, 6))
