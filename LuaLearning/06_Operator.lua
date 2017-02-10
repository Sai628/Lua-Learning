
-- Arithmetic operator
a = 21
b = 10

c = a + b
print(c)  -- 31

c = a - b
print(c)  -- 11

c = a * b
print(c)  -- 210

c = a / b
print(c)  -- 2.1

c = a % b
print(c)  -- 1

c = a ^ 2
print(c)  -- 441

c = -a
print(c)  -- -21


-- Relational operator
a = 21
b = 10

if a == b then
    print("a equals b")
end

if a ~= b then
    print("a not equals b")
else
    print("a equals b")
end

if a > b then
    print("a larger than b")
else
    print("a not larger than b")
end

if a < b then
    print("a less than b")
else
    print("a not less than b")
end

a = 5
b = 20

if a <= b then
    print("a less than or equals b")
end

if b >= a then
    print("b larger or equals a")
end


-- Logical operator
a = true
b = true

if a and b then
    print("'a and b' is ture")
end

if a or b then
    print("'a or b' is true")
end

a = false
b = true

if a and b then
    print("'a and b' is true")
else
    print("'a and b' is false")
end

if not(a and b) then
    print("'not(a and b) is true'")
else
    print("'not(a and b) is false'")
end


-- Other operators
a = "Hello "
b = "Lua"
print(a .. b)  -- Hello Lua

print("the length of 'b':", #b)  -- 3
print("the length of 'Test' string:", #"Test")  -- 4
print("the length of 'www.github.com'", #"www.github.com") -- 14


-- Operator priority
a = 20
b = 10
c = 15
d = 5

e = (a + b) * c / d
print("(a + b) * c / d:", e)

e = ((a + b) * c) / d
print("((a + b) * c) / d:", e)

e = (a + b) * (c / d)
print("(a + b) * (c / d):", e)

e = a + (b * c) / d
print("a + (b * c) / d:", e)
