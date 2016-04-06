
-- if
if (0) then
    print("0 is true")  -- o is true
end

a = 10
if a < 20 then
    print("a is less than 20")
end
print("a value is: " .. a)


-- if...else
a = 100
if a < 20 then
    print("a is less than 20")
else
    print("a is larger than 20")
end

-- if...else if...else
if a == 10 then
    print("a value is 10")
elseif a == 20 then
    print("a value is 20")
elseif a == 30 then
    print("a value is 30")
else
    print("no match a value")
end
print("a value is: " .. a)


-- nested if
a = 100
b = 200
if a == 100 then
    if b == 200 then
        print("a value is 100, and b value is 200")
    end
end
print("a value is: " .. a)
print("b value is: " .. b)
