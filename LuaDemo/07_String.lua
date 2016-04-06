
string1 = "Lua"
print("string1 is:", string1)

string2 = 'www.github.com'
print("string2 is:", string2)

string3 = [[Lua learning]]
print("string3 is:", string3)

print(string.upper(string1))  -- LUA
print(string.lower(string1))  -- lua
print(string.gsub("aaaa","a","z"))  -- zzzz 4

print(string.find("Hello Lua user", "Lua"))  -- 7 9
print(string.find("Hello Lua user", "lua"))  -- nil

print(string.reverse("Lua"))  -- auL
print(string.format("the value is: %d",4))  -- the value is: 4

print(string.char(97, 98, 99, 100))  -- abcd
print(string.byte("ABCD", 4))  -- 68
print(string.byte("ABCD"))  -- 65

print(string.len("abc"))  -- 3
print(string.rep("abcd",2))  -- abcdabcd

print("www.github" .. ".com")  -- www.github.com
