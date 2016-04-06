-- __index
mytable = setmetatable({key1 = "value1"}, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return mytable[key]
        end
    end
})
print(mytable.key1, mytable.key2)  -- value1	metatablevalue


mytable2 = setmetatable({key1 = "value1"}, {__index = {key2 = "metatablevalue"}})
print(mytable2.key1, mytable2.key2)  -- value1	metatablevalue


-- __newindex
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, {__newindex = mymetatable})
print(mytable.key1)  -- value1

mytable.newkey = "new key"
print(mytable.newkey, mymetatable.newkey)  -- nil	new key

mytable.key1 = "new key1"
print(mytable.key1, mymetatable.key1)  -- new key1	nil


mytable = setmetatable({key1 = "value1"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")
    end
})
mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1, mytable.key2)  -- new value	"4"


-- __add
function table_maxn(t)
    local mn = 0
    for k,v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    
    return mn
end

mytable = setmetatable({1, 2, 3}, {
    __add = function(mytable, newtable)
        for i=1,table_maxn(newtable) do
            table.insert(mytable, newtable[i])
        end
        
        return mytable
    end
})

secondtable = {4, 5, 6}
mytable = mytable + secondtable

for i,v in ipairs(mytable) do
    print(i,v)
end
-- 1	1
-- 2	2
-- 3	3
-- 4	4
-- 5	5
-- 6	6


-- __call
mytable = setmetatable({10}, {
    __call = function(mytable, newtable)
        sum = 0
        
        for i=1,table_maxn(mytable) do
            sum = sum + mytable[i]
        end
        
        for i=1,table_maxn(newtable) do
            sum = sum + newtable[i]
        end
        
        return sum
    end
})
newtable = {10, 20, 30}
print(mytable(newtable))  -- 70


-- __tostring
mytable = setmetatable({10, 20, 30}, {
    __tostring = function(mytable)
        sum = 0
        for k,v in pairs(mytable) do
            sum = sum + v
        end
        
        return "the sum of all elements in table is:"..sum
    end
})
print(mytable)  -- the sum of all elements in table is:60
