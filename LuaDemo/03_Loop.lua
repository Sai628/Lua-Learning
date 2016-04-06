
-- while loop
a = 10
while (a < 20) do
    print("'a' value is: " .. a)
    a = a + 1
end


-- for loop
function f(x)
    print("function f(x) is called")
    return x * 2
end

for i=1,f(5) do
    print(i)
end

for i=10,1,-1 do
    print(i)
end

days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
for i,v in ipairs(days) do
    print(i, v)
end


-- repeat..until loop
a = 10
repeat
    print("'a' value is: " .. a)
    a = a + 1
until (a > 15)


-- nested loop
j = 2
for i=2,10 do
    for j=2,(i/j),2 do
        if not (i%j) then
            break
         end
         
         if j > (i/j) then
            print("i valus is: " .. i)
         end 
    end
end


-- break
a = 10
while (a < 20) do
    print("'a' value is: " .. a)
    a = a + 1
    if (a > 15) then
        break
    end
end

