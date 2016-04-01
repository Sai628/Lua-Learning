
print(type("Hello World"))
print(type(10.4 * 3))
print(type(print))
print(type(type))
print(type(true))
print(type(nil))
print(type({}))
print(type(type(X)))
print()


-- nil
print("--nil")
print(type(a))

tab1 = {key1 = "val1", key2 = "val2", "val3"}
for k,v in pairs(tab1) do
    print(k .. "-" .. v)
end

tab1.key1 = nil
for k,v in pairs(tab1) do
    print(k .. "-" .. v)
end

print()


-- boolean
print("--boolean")
print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("at least one is 'true'")
else
    print("'false' and 'nil' all are false!")
end

print()


-- number
print("--number")
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))

print()


-- string
print("--string")
string1 = "this is string1"
string2 = "this is string2"

html1 = [[
    <html>
    <head></head>
    <body>
        <a href="http://www.github.com">github</a>
    </body>
    </html>
]]
print(html1)

print("2" + 6)
print("2" + "6")
print("2 + 6")
print("-2e2" * "6")
--print("error" + 1) will execute error
print("a" .. "b")
print(157 .. 428)

len = "www.github.com"
print(#len)

print()


-- table
print("--table")
local tbl1 = {}
for i=1,10 do
    tbl1[i] = i
end
tbl1["key"] = "value"
print(tbl1["key"])
print(tbl1["none"])

local tbl2 = {"apple", "pear", "orange", "grape"}
for k,v in pairs(tbl2) do
    print("key", k)
end

a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k,v in pairs(a) do
    print(k .. " : " .. v)
end

print()


-- function
print("--function")
function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

function anonymous(tab, fun)
    for k,v in pairs(tab) do
        print(fun(k, v))
    end
end

tab = {key1 = "val1", key2 = "val2"}
anonymous(tab, function(key, val)
    return key .. ":" .. val
end)

print()

