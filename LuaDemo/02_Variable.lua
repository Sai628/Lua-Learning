
a = 5  --global variable
local b = 5  --local variable


function joke()
    c = 5  --local variable
    local d = 6  --local variable
end


print(c, d)  --nil nil


do
    local a = 6  --local variable
    b = 6  --global variable
    print(a, b)  --6 6
end


print(a, b)  --5 6


a, b = 10, 11
x, y = 13, 14
x, y = y, x  --swap 'x' for 'y'
print(x, y)

a, b, c = 0, 1
print(a, b, c)  --0 1 nil


a, b = a+1, b+1, b+2
print(a, b)  --1 2


a, b, c = 0
print(a, b, c)  --0 nil nil


a, b, c = 0, 0, 0
print(a, b, c)


site = {}
site["url"] = "www.github.com"
print(site["url"])
print(site.url)
