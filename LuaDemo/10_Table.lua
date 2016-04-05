
mytable = {}
print("type of 'mytable' is:", type(mytable))  --type of 'mytable' is:	table

mytable[1] = "Lua"
mytable["wow"] = "before"
print("'mytable[1]':", mytable[1])  --'mytable[1]':	Lua
print("'mytable[\"wow\"]':", mytable["wow"])  --'mytable["wow"]':	before

alternatable = mytable
print("alternatable[1]:", alternatable[1])  --alternatable[1]:	Lua
print("'mytable[\"wow\"]':", alternatable["wow"])  --'mytable["wow"]':	before

alternatable["wow"] = "after"
print("'mytable[\"wow\"]':", mytable["wow"])  --'mytable["wow"]':	after

alternatable = nil
print("alternatable is:", alternatable)  --alternatable is:	nil
print("'mytable[\"wow\"]':", mytable["wow"])  --'mytable["wow"]':	after

mytable = nil
print("mytable is:", mytable)  --nil


fruits = {"banana", "orange", "apple"}
print(table.concat(fruits))  --bananaorangeapple
print(table.concat(fruits, ", "))  --banana, orange, apple
print(table.concat(fruits, ", ", 2, 3))  --orange, apple

table.insert(fruits, "mango")
print(fruits[4])  --mango
table.insert(fruits, 2, "grapes")
print(fruits[2])  --grapes

print("the last element is:", fruits[5])  --the last element is:	mango
table.remove(fruits)
print("the last element is:", fruits[5])  --the last element is:	nil

print("before sort:")
for k,v in ipairs(fruits) do
    print(k,v)
end
--before sort:
--1	banana
--2	grapes
--3	orange
--4	apple

table.sort(fruits)
print("after sort:")
for k,v in ipairs(fruits) do
    print(k,v)
end
--after sort:
--1	apple
--2	banana
--3	grapes
--4	orange


function table_maxn(t)
    local mn = 0
    for k,v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    
    return mn
end
tb1 = {[1] = "a", [2] = "b", [3] = "c", [26] = "z"}
print("the length of tb1:", #tb1)  --the length of tb1:	3
print("the max key in tb1 is:", table_maxn(tb1))  --the max key in tb1 is:	26
